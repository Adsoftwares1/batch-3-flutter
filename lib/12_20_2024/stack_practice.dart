

import 'package:flutter/material.dart';

class StackPractice extends StatefulWidget {
  const StackPractice({super.key});

  @override
  State<StackPractice> createState() => _StackPracticeState();
}

class _StackPracticeState extends State<StackPractice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 192, 237, 195),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSK44xaowhC6JNg9h0B9xgQ7e7eZ7lHH05Lw&s",
                    fit: BoxFit.cover,
                  ),
                ),
          
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2PDgpRG2S5xKw3yiErj42abHlCh2ztALImA&s",
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.camera, color: Colors.red, size: 50,)),
                    ],
                                    ),
                  ),
                ),
          
              // without align widget
                // Positioned(
                //   top: 150,
                //   left: 150,
                //   child: CircleAvatar(
                //     radius: 50,
                //     backgroundImage: NetworkImage(
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2PDgpRG2S5xKw3yiErj42abHlCh2ztALImA&s",
                //     ),
                //   ),
                // ),
                // Positioned(
                //   top: 200,
                //   left: 220,
                //   child: Icon(Icons.camera, color: Colors.red, size: 50,),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}