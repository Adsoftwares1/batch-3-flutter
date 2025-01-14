


import 'package:first_app_batch_3/1_14_2025/practice_margin_rand_number.dart';
import 'package:flutter/material.dart';

class CustomSpashScreen extends StatefulWidget {
  const CustomSpashScreen({super.key});

  @override
  State<CustomSpashScreen> createState() => _CustomSpashScreenState();
}

class _CustomSpashScreenState extends State<CustomSpashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
       Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MerginRandNumber()));
    });  
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Custom Splash Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
    );
  }
}