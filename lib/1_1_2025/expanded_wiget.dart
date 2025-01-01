
import 'package:flutter/material.dart';

class ExpandedWidgetPractice extends StatefulWidget {
  const ExpandedWidgetPractice({super.key});

  @override
  State<ExpandedWidgetPractice> createState() => _ExpandedWidgetPracticeState();
}

class _ExpandedWidgetPracticeState extends State<ExpandedWidgetPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}