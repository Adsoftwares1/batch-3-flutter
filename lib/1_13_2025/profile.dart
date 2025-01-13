
import 'package:first_app_batch_3/12_23_2024/login_ui.dart';
import 'package:first_app_batch_3/1_13_2025/Components/my_drawer.dart';
import 'package:first_app_batch_3/1_13_2025/setting.dart';
import 'package:first_app_batch_3/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      drawer: MyDrawer(),
      body: Center(child: Text("Profile"),),
    );
  }
}