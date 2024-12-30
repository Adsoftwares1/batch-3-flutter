
import 'package:first_app_batch_3/12_23_2024/login_ui.dart';
import 'package:first_app_batch_3/12_24_24/digital_watch.dart';
import 'package:first_app_batch_3/12_25_2024/stateless.dart';
import 'package:first_app_batch_3/12_25_2024/statfulPractice.dart';
import 'package:first_app_batch_3/12_30_2024/buttons_practice.dart';
import 'package:first_app_batch_3/12_30_2024/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GoogleFontsPractice(),
    );
  }
}




