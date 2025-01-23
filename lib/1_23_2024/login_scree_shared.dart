import 'package:first_app_batch_3/1_23_2024/home_screen_shared.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenSharedPrefrences extends StatefulWidget {
  const LoginScreenSharedPrefrences({Key? key}) : super(key: key);

  @override
  _LoginScreenSharedPrefrencesState createState() =>
      _LoginScreenSharedPrefrencesState();
}

class _LoginScreenSharedPrefrencesState
    extends State<LoginScreenSharedPrefrences> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  void _login() async {
    setState(() {
      isLoading = true;
    });

    // call the api
    await Future.delayed(Duration(seconds: 3));

    // Here you would typically check the credentials
    print(
        'Email: ${emailController.text}, Password: ${passwordController.text}');

    // store my token in shared preferences
    // declare shared preferences object
    SharedPreferences sharedPreferencesObject =
        await SharedPreferences.getInstance();
    if (emailController.text == 'admin' &&
        passwordController.text == '123456') {
      // store bool value in shared preferences
      await sharedPreferencesObject.setBool("isLogin", true);
      // navigate to home screen
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreenSharedPrefrences()));
      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login successful!')),
      );
    } else {
      // store bool value in shared preferences
      await sharedPreferencesObject.setBool("isLogin", false);
      // Show a failed message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed!')),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: isLoading ? null : _login,
                child: isLoading ? CircularProgressIndicator() : Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
