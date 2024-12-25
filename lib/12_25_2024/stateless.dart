import 'package:flutter/material.dart';

class StateLessPractice extends StatelessWidget {
  StateLessPractice({super.key});

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: isPressed == false ? Colors.red : Colors.green,
              child: TextButton(
                onPressed: () {
                  isPressed = !isPressed;
                  print("is pressed value: $isPressed");
                },
                child: Text("data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
