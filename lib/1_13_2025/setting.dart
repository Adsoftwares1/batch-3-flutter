
import 'package:first_app_batch_3/1_13_2025/Components/my_drawer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting"),),
      drawer: MyDrawer(),
      body: Center(child: Text("Setting"),),
    );
  }
}