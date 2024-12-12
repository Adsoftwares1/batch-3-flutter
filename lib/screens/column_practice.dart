


import 'package:flutter/material.dart';

class ColumnPractice extends StatefulWidget {
  const ColumnPractice({super.key});

  @override
  State<ColumnPractice> createState() => _ColumnPracticeState();
}

class _ColumnPracticeState extends State<ColumnPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Practice"),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.green,
                child: Center(child: Text("Child one"))),
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.red,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Child two"))),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text("Child three"))),
            Container(
              width: 200,
              height: 100,
              color: Colors.yellow,
              child: Center(child: Text("Child four"))),
            Container(
              width: 200,
              height: 100,
              color: Colors.purple,
              child: Center(child: Text("Child five"))),
          Container(
            width: 200,
            height: 300,
            color: Colors.orange,
            child: Center(child: Text("Child six"))),
          ],
        ),
      ),
    );
  }
}