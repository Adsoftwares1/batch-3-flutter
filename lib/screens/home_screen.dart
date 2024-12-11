
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        leading : Icon(Icons.menu),
        actions: [
          Icon(Icons.search, size: 50),
          Icon(Icons.settings),
          SizedBox(width: 40),
          Icon(Icons.more_vert),
          SizedBox(width: 5),
        ],
      ),
      body: Container(
        width: 600,
        height: 300,
        
        child: Center(child: Text("Hello World"),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 10),
        ),
      ),
    );
  }
}