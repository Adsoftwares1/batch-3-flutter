import 'package:flutter/material.dart';

class StatefullPractice extends StatefulWidget {
  const StatefullPractice({super.key});

  @override
  State<StatefullPractice> createState() => _StatefullPracticeState();
}

class _StatefullPracticeState extends State<StatefullPractice> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statefull Practice'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: isPressed == false ? Colors.red : Colors.green,
            child: Center(
              child: TextButton(onPressed: () {
                isPressed = !isPressed;
                setState(() {});
              }, child: Text("Press me")),
            ),
          ),
        ));
  }
}
