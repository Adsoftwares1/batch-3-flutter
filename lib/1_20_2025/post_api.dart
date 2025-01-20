import 'package:first_app_batch_3/1_20_2025/home_Screen_regisrtation_sucess.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApiPractice extends StatefulWidget {
  const PostApiPractice({super.key});

  @override
  State<PostApiPractice> createState() => _PostApiPracticeState();
}

class _PostApiPracticeState extends State<PostApiPractice> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Api Practice'),
      ),
      body: Center(
          child: Column(
        children: [
          // emails
          Container(
              width: 300,
              child: TextField(
                controller: emailController,
              )),
          // password
          Container(
              width: 300,
              child: TextField(
                controller: passwordController,
                autocorrect: false,
              )),
          // post button
          ElevatedButton(
              onPressed: () async{
                // step 2 : url
                String url = 'https://reqres.in/api/register';
                // step 3 : hit api
              final response = await  http.post(Uri.parse(url), body: {
                  "email": emailController.text,
                  "password": passwordController.text,
                });
                // step 4 : show response
                if(response.statusCode == 200){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Register success")));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreenRegistrationSuccess()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Register failed ${response.body}")));
                }
              },
              child: Text('Post'))
        ],
      )),
    );
  }
}
