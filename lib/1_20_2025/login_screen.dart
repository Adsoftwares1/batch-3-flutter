

import 'package:first_app_batch_3/1_20_2025/home_Screen_regisrtation_sucess.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginSCreenAPI extends StatefulWidget {
  const LoginSCreenAPI({super.key});

  @override
  State<LoginSCreenAPI> createState() => _LoginSCreenAPIState();
}

class _LoginSCreenAPIState extends State<LoginSCreenAPI> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
          child: Column(
            children: [
              // email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              // password
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              // login button
              ElevatedButton(
                onPressed: () async{
                  String url = 'https://reqres.in/api/login';

                  final response = await http.post(Uri.parse(url), body: {
                    "email": emailController.text,
                    "password": passwordController.text,
                  });

                  if(response.statusCode == 200){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login success")));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenRegistrationSuccess()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed ${response.body}")));
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
      ),
    );
  }
}