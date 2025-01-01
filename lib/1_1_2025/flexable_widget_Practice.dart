

import 'package:flutter/material.dart';

class FlexableWidgetPractice extends StatefulWidget {
  const FlexableWidgetPractice({super.key});

  @override
  State<FlexableWidgetPractice> createState() => _FlexableWidgetPracticeState();
}

class _FlexableWidgetPracticeState extends State<FlexableWidgetPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(  
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          
          Flexible(
            flex: 4,
            child: Container(
              width: 100,
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}