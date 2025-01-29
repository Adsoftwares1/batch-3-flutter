

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/login_with_email_and_password.dart';
import 'package:flutter/material.dart';

class HomeScreenFirebaseAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth authObject = FirebaseAuth.instance;
            authObject.signOut();
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithEmailAndPassword()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent, // Amber accent color
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
          ),

          child: Text('Logout', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
