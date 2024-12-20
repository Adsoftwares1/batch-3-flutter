

import 'package:flutter/material.dart';

class TextFieldAndButtonPractice extends StatefulWidget {
  const TextFieldAndButtonPractice({super.key});

  @override
  State<TextFieldAndButtonPractice> createState() => _TextFieldAndButtonPracticeState();
}

class _TextFieldAndButtonPracticeState extends State<TextFieldAndButtonPractice> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300, 
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                  prefixIcon: Icon(Icons.abc),
                ),
                
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 200,
              height: 50,
              color: Colors.blue  ,
              child: TextButton(onPressed: (){
                print("my email is ${emailController.text}");
                print("my password is ${passwordController.text}");
              }, child: Text("Submit", style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}