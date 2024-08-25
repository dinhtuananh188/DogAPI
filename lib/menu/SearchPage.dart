import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../clients/breed_api/breed_api.dart';
import '../models/breed/breed.dart';
import 'DetailPage.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.thedogapi.com',
  ),
);

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final BreedApiClient breedApiClient = BreedApiClient(dio);
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";
  final Map<int, bool> _favoriteStatus = {};

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus();
  }

  Future<void> _loadFavoriteStatus() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoriteDocs = await FirebaseFirestore.instance
        .collection('favorites')
        .where('userId', isEqualTo: userId)
        .get();

    setState(() {
      for (var doc in favoriteDocs.docs) {
        final breedId = int.tryParse(doc['breedId']);
        if (breedId != null) {
          _favoriteStatus[breedId] = true;
        }
      }
    });
  }

  Future<void> _updateFavoriteStatus(Breed breed, bool isFavorite) async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoritesRef = FirebaseFirestore.instance.collection('favorites');
    final querySnapshot = await favoritesRef
        .where('userId', isEqualTo: userId)
        .where('breedId', isEqualTo: breed.id.toString())
        .get();

    if (isFavorite) {
      if (querySnapshot.docs.isEmpty) {
        await favoritesRef.add({
          'userId': userId,
          'breedId': breed.id.toString(),
        });
      }
    } else {
      for (var doc in querySnapshot.docs) {
        await doc.reference.delete();
      }
    }
  }

  Future<List<Breed>> _fetchBreeds() async {
    final List<Breed> breeds = await breedApiClient.getBreedsSearch(search: _searchText);
    return breeds;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Nhập thông tin tìm kiếm...',
            border: InputBorder.none,
          ),
          onChanged: (text) {
            setState(() {
              _searchText = text;
            });
          },
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _searchText = "";
                _searchController.clear();
              });
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Breed>>(
        future: _fetchBreeds(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No breeds found.'));
          } else {
            final breeds = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              itemCount: breeds.length,
              itemBuilder: (context, index) {
                final breed = breeds[index];
                final isFavorite = _favoriteStatus[breed.id] ?? false;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(breed: breed),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        breed.referenceImageId != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://cdn2.thedogapi.com/images/${breed.referenceImageId}.jpg',
                            width: 120,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                            : Text('No image available'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  breed.name,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border,
                                  color: isFavorite ? Colors.pink : null,
                                ),
                                onPressed: () async {
                                  setState(() {
                                    _favoriteStatus[breed.id] = !isFavorite; // Toggle favorite status
                                  });
                                  await _updateFavoriteStatus(breed, !isFavorite); // Update Firestore
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
