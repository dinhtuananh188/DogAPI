import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth/auth_service.dart';
import '../auth/login_screen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the current user
    final User? user = FirebaseAuth.instance.currentUser;

    // Check if user is logged in
    if (user == null) {
      return Center(child: Text('No user is logged in.'));
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Display the email
          ListTile(
            title: Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(user.email ?? 'No email available'),
          ),
          const SizedBox(height: 20),
          // Sign Out ListTile
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              'Sign Out',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
            onTap: () async {
              final auth = AuthService();
              await auth.signout();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );// Optionally, navigate back after sign out
            },
          ),
        ],
      ),
    );
  }
}
