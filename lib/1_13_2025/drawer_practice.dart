
import 'package:first_app_batch_3/1_13_2025/Components/my_drawer.dart';
import 'package:first_app_batch_3/1_13_2025/profile.dart';
import 'package:first_app_batch_3/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DrawerPractice extends StatefulWidget {
  const DrawerPractice({super.key});

  @override
  State<DrawerPractice> createState() => _DrawerPracticeState();
}

class _DrawerPracticeState extends State<DrawerPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Practice"),),
      drawer: MyDrawer(),
       body: Center(child: Text("Home Screen"),),
    );
  }
}