
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app_batch_3/1_23_2024/home_screen_shared.dart';
import 'package:first_app_batch_3/1_23_2024/login_scree_shared.dart';
import 'package:first_app_batch_3/1_29_2025_firebase_email_athentication/login_with_email_and_password.dart';
import 'package:first_app_batch_3/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:first_app_batch_3/1_30_2025_firestore_database/insert_data_screen.dart';
late SharedPreferences sharedPreferencesObject;
bool isLogin = false;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
   sharedPreferencesObject = await SharedPreferences.getInstance();
   isLogin = sharedPreferencesObject.getBool("isLogin") ?? false;

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
      home: InsertDataScreen(),
    );
  }
}





