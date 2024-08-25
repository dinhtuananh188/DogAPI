import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/breed/breed.dart';

class DetailPage extends StatefulWidget {
  final Breed breed;

  DetailPage({required this.breed});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late bool _isFavorite;
  bool _isLoading = true; // To manage the loading state

  @override
  void initState() {
    super.initState();
    _fetchFavoriteStatus();
  }

  Future<void> _fetchFavoriteStatus() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoriteDoc = await FirebaseFirestore.instance
        .collection('favorites')
        .where('userId', isEqualTo: userId)
        .where('breedId', isEqualTo: widget.breed.id.toString())
        .get();

    setState(() {
      _isFavorite = favoriteDoc.docs.isNotEmpty;
      _isLoading = false; // Loading is complete
    });
  }

  Future<void> _updateFavoriteStatus(bool isFavorite) async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    final favoritesRef = FirebaseFirestore.instance.collection('favorites');
    final querySnapshot = await favoritesRef
        .where('userId', isEqualTo: userId)
        .where('breedId', isEqualTo: widget.breed.id.toString())
        .get();

    if (isFavorite) {
      if (querySnapshot.docs.isEmpty) {
        await favoritesRef.add({
          'userId': userId,
          'breedId': widget.breed.id.toString(),
        });
      }
    } else {
      for (var doc in querySnapshot.docs) {
        await doc.reference.delete();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Loading...'),
        ),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.breed.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Pop the current route off the navigator stack
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.breed.referenceImageId != null
                  ? Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://cdn2.thedogapi.com/images/${widget.breed.referenceImageId}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  : Center(child: Text('No image available')),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.breed.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: _isFavorite ? Colors.pink : null,
                    ),
                    onPressed: () async {
                      final newFavoriteStatus = !_isFavorite;
                      setState(() {
                        _isFavorite = newFavoriteStatus;
                      });
                      await _updateFavoriteStatus(newFavoriteStatus);
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              if (widget.breed.origin != null)
                Text('Nguồn gốc: ${widget.breed.origin}'),
              if (widget.breed.countryCode != null)
                Text('Mã quốc gia: ${widget.breed.countryCode}'),
              SizedBox(height: 10),
              Text('Cân nặng: ${widget.breed.weight.imperial} lbs (${widget.breed.weight.metric} kg)'),
              Text('Chiều cao: ${widget.breed.height.imperial} inches (${widget.breed.height.metric} cm)'),
              SizedBox(height: 10),
              if (widget.breed.bredFor != null)
                Text('Mục đích chăn nuôi: ${widget.breed.bredFor}'),
              if (widget.breed.breedGroup != null)
                Text('Nhóm giống: ${widget.breed.breedGroup}'),
              if (widget.breed.lifeSpan != null)
                Text('Tuổi thọ: ${widget.breed.lifeSpan}'),
              if (widget.breed.temperament != null)
                Text('Tính cách: ${widget.breed.temperament}'),
            ],
          ),
        ),
      ),
    );
  }
}
