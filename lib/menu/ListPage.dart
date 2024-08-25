import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../clients/breed_api/breed_api.dart';
import '../models/breed/breed.dart';
import 'DetailPage.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.thedogapi.com',
  ),
);

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final BreedApiClient breedApiClient = BreedApiClient(dio);
  int _currentPage = 1;
  final Map<int, bool> _favoriteStatus = {};

  Future<void> _loadFavoriteStatus() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoritesSnapshot = await FirebaseFirestore.instance
        .collection('favorites')
        .where('userId', isEqualTo: userId)
        .get();

    final favoriteIds = favoritesSnapshot.docs
        .map((doc) => int.parse(doc['breedId']))
        .toSet();

    setState(() {
      for (var breedId in favoriteIds) {
        _favoriteStatus[breedId] = true;
      }
    });
  }

  Future<void> _updateFavoriteStatus(int breedId, bool isFavorite) async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoritesRef = FirebaseFirestore.instance.collection('favorites');
    final querySnapshot = await favoritesRef
        .where('userId', isEqualTo: userId)
        .where('breedId', isEqualTo: breedId.toString())
        .get();

    if (isFavorite) {
      if (querySnapshot.docs.isEmpty) {
        await favoritesRef.add({
          'userId': userId,
          'breedId': breedId.toString(),
        });
      }
    } else {
      for (var doc in querySnapshot.docs) {
        await doc.reference.delete();
      }
    }
  }

  Future<List<Breed>> _fetchBreeds() async {
    final List<Breed> breeds = await breedApiClient.getBreedsPaging(limit: 10, page: _currentPage);
    return breeds;
  }

  @override
  void initState() {
    super.initState();
    _loadFavoriteStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Breed>>(
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
                                        final newFavoriteStatus = !isFavorite;
                                        setState(() {
                                          _favoriteStatus[breed.id] = newFavoriteStatus;
                                        });
                                        await _updateFavoriteStatus(breed.id, newFavoriteStatus);
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Page: $_currentPage'),
                SizedBox(width: 10),
                Expanded(
                  child: Slider(
                    value: _currentPage.toDouble(),
                    min: 1,
                    max: 17,
                    divisions: 16,
                    label: _currentPage.toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentPage = value.toInt();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
