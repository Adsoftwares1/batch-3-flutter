import 'package:flutter/material.dart';

class ButtonsPractice extends StatefulWidget {
  const ButtonsPractice({super.key});

  @override
  State<ButtonsPractice> createState() => _ButtonsPracticeState();
}

class _ButtonsPracticeState extends State<ButtonsPractice> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text Button
            TextButton(
              onPressed: () {
                print("Friend request sent");
              },
              child: Text(
                  isHover ? "please click to send friend request" : "+ Friend"),
              onHover: (value) {
                print("Friend request sent");
                setState(() {
                  isHover = value;
                });
              },
              onLongPress: () {
                print("Long pressed");
              },
            ),
            // icon Button
            IconButton(onPressed: (){
              print("Icon button pressed");
            }, icon: Icon(Icons.add)),
            // outline Button
            OutlinedButton(onPressed: (){}, child: Text("Outlined Button")),
            // elevated Button
            ElevatedButton(onPressed: (){}, child: Text("Hello World")),
            // making any widget as a button
            InkWell(
              onTap: (){
                print("InkWell button pressed");
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("I am container")),
              ),
            ),

            // gester detector
            Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: GestureDetector(
                  onTap: (){
                    print("GestureDetector button pressed !!!!!!!!");
                  },
                  onLongPress: (){

                  },
                  child: Text("I am container"))),
              ),
          ],
        ),
      ),
    );
  }
}
