import 'package:dogapi/warpper.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDzaiAP-CESeVb0oxD32492sRQSaJ4AeiQ', // current_key
          appId:
              '1:985955700977:android:32612597e2d4f9f05c5950', // mobilesdk_app_id
          messagingSenderId: '985955700977', // project_number
          projectId: 'dogapi-ff838', // project_id
          storageBucket: 'dogapi-ff838.appspot.com'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase Authentication",
      initialRoute: "/",
      routes: {
        "/": (context) => Warpper(),
      },
    );
  }
}
