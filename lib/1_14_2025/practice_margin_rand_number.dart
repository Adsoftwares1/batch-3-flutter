
import 'dart:math';

import 'package:flutter/material.dart';

class MerginRandNumber extends StatefulWidget {
  const MerginRandNumber({super.key});

  @override
  State<MerginRandNumber> createState() => _MerginRandNumberState();
}

class _MerginRandNumberState extends State<MerginRandNumber> {
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MerginRandNumber'),
      ),
      body: Column(
        children: [
          // mergin and padding practice
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              padding: EdgeInsets.all(20),
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
          ),

          // to call random number function
          Container(
            width: 300,
            height: 60,
            color: Colors.yellow,
            child: Center(
              child: TextButton(
                onPressed: () {
                  generateRandomNumber();
                },
                child: Text('Random Number'),
              ),
            ),
          ),

          Text('Random Number: $randomNumber'),
        ],
      )
    );
  }

  // to generate random number
  void generateRandomNumber() {
     randomNumber = Random().nextInt(10);
     print("randomNumber: $randomNumber");
     setState(() {
      
     });
  }
}
