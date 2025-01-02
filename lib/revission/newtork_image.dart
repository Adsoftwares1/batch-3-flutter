import 'dart:io';

import 'package:first_app_batch_3/revission/screenA.dart';
import 'package:flutter/material.dart';

class NetworkImagePractice extends StatelessWidget {
  const NetworkImagePractice({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Network Image'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.
                push(context, MaterialPageRoute(builder: (context){
                  return ScreenA();
                }));

                
              }, child: Text('Navigate to Screen A')),
              // Image.network(
              //   'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
              // ),
            ],
          ),
        ),
      );
     
  }
}