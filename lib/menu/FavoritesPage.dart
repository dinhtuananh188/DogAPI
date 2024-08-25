import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/breed/breed.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'DetailPage.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late Future<List<Breed>> _favoritesFuture;

  @override
  void initState() {
    super.initState();
    _favoritesFuture = fetchUserFavorites();
  }

  Future<List<Breed>> fetchUserFavorites() async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    final List<Breed> breeds = [];

    try {
      final favoriteSnapshot = await FirebaseFirestore.instance
          .collection('favorites')
          .where('userId', isEqualTo: userId)
          .get();

      for (var doc in favoriteSnapshot.docs) {
        final breedId = doc['breedId'];
        final response = await http.get(Uri.parse('https://api.thedogapi.com/v1/breeds/$breedId'));

        if (response.statusCode == 200) {
          final breedData = json.decode(response.body);
          if (breedData != null) {
            breeds.add(Breed.fromJson(breedData));
          }
        } else {
          print("Failed to fetch breed for breedId: $breedId. Status code: ${response.statusCode}");
        }
      }
    } catch (e) {
      print("Failed to retrieve favorites: $e");
    }

    return breeds;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Breed>>(
        future: _favoritesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No favorites found.'));
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final breed = snapshot.data![index];
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(breed: breed),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: breed.referenceImageId != null
                              ? Image.network(
                            'https://cdn2.thedogapi.com/images/${breed.referenceImageId}.jpg',
                            fit: BoxFit.cover,
                          )
                              : Placeholder(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            breed.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
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
