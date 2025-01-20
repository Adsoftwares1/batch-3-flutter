
import 'package:flutter/material.dart';

class HomeScreenRegistrationSuccess extends StatefulWidget {
  const HomeScreenRegistrationSuccess({super.key});

  @override
  State<HomeScreenRegistrationSuccess> createState() => _HomeScreenRegistrationSuccessState();
}

class _HomeScreenRegistrationSuccessState extends State<HomeScreenRegistrationSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Registration Success'),
      ),
    );
  }
}