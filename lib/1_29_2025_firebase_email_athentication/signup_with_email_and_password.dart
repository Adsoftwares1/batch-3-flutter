

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/home_screen_firebase_auth.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/login_with_email_and_password.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailAndPassword extends StatefulWidget {
  @override
  _SignUpWithEmailAndPasswordState createState() => _SignUpWithEmailAndPasswordState();
}

class _SignUpWithEmailAndPasswordState extends State<SignUpWithEmailAndPassword> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                if(emailController.text.isEmpty || passwordController.text.isEmpty || confirmPasswordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter all the fields')));
                } else if(passwordController.text != confirmPasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password and Confirm Password do not match')));
                } else {
                  await signUp();
                }

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent, // Amber accent color
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              ),


              child: isLoading ? CircularProgressIndicator() :  Text('Sign Up', style: TextStyle(fontSize: 18)),
            ),

            // navigate to login screen
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithEmailAndPassword()));
            }, child: Text('Sign In')),
          ],
        ),
      ),
    );

  }

  Future<void> signUp() async {
    setState(() {
      isLoading = true;
    });
    // step 2:
    FirebaseAuth authObject = FirebaseAuth.instance;
    //step 3:
    try {

     final userCredential = await authObject.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      if(userCredential.user != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sign Up Successfully')));
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWithEmailAndPassword()));
      }
    } catch (e) {
      print("Error while signing up: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }



  }
}
