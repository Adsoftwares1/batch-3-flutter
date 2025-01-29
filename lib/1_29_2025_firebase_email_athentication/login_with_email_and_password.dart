

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/home_screen_firebase_auth.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/signup_with_email_and_password.dart';
import 'package:flutter/material.dart';

class LoginWithEmailAndPassword extends StatefulWidget {
  @override
  _LoginWithEmailAndPasswordState createState() => _LoginWithEmailAndPasswordState();
}

class _LoginWithEmailAndPasswordState extends State<LoginWithEmailAndPassword> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                await login();
              },
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.amberAccent, // Amber accent color
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              ),
              child: isLoading ? CircularProgressIndicator() : Text('Sign In', style: TextStyle(fontSize: 18)),


            ),

            // navigate to signup screen
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpWithEmailAndPassword()));
            }, child: Text('Sign Up')),
          ],
        ),
      ),
    );

  }

  // login function
  Future<void> login() async {
    setState(() {
      isLoading = true;
    });
    // step 2:
    FirebaseAuth authObject = FirebaseAuth.instance;
    //step 3:
    try {

      final userCredential = await authObject.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      print("userCredential: ${userCredential.toString()}");
      if(userCredential.user != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Successfully')));
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenFirebaseAuth()));
      }
    } catch (e) {
      print("Error while logging in: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }


}
