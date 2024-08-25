import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



@override
void run(){
  getUserFavorites();
}

void getUserFavorites() {
  String userId = FirebaseAuth.instance.currentUser!.uid;
  FirebaseFirestore.instance.collection('favorites')
      .where('userId', isEqualTo: userId)
      .get().then((snapshot) {
    snapshot.docs.forEach((doc) {
      print(doc.data());
    });
  });
}
