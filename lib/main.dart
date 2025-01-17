
import 'package:first_app_batch_3/12_23_2024/login_ui.dart';
import 'package:first_app_batch_3/12_24_24/digital_watch.dart';
import 'package:first_app_batch_3/12_25_2024/stateless.dart';
import 'package:first_app_batch_3/12_25_2024/statfulPractice.dart';
import 'package:first_app_batch_3/12_30_2024/buttons_practice.dart';
import 'package:first_app_batch_3/12_30_2024/google_fonts.dart';
import 'package:first_app_batch_3/1_13_2025/drawer_practice.dart';
import 'package:first_app_batch_3/1_14_2025/NetworkCachedIamge_Practice.dart';
import 'package:first_app_batch_3/1_14_2025/custom_splash_screen.dart';
import 'package:first_app_batch_3/1_14_2025/practice_margin_rand_number.dart';
import 'package:first_app_batch_3/1_15_2025/get_api_practice_without_model.dart';
import 'package:first_app_batch_3/1_16_2025/get_api_practice_with_model.dart';
import 'package:first_app_batch_3/1_1_2025/expanded_wiget.dart';
import 'package:first_app_batch_3/1_1_2025/flexable_widget_Practice.dart';
import 'package:first_app_batch_3/1_1_2025/whatsapp_ui/Home_screen.dart';
import 'package:first_app_batch_3/1_20_2025/login_screen.dart';
import 'package:first_app_batch_3/1_20_2025/post_api.dart';
import 'package:first_app_batch_3/1_20_2025/update_my_info.dart';
import 'package:first_app_batch_3/revission/newtork_image.dart';
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
      home: UpdateMyInfo(),
    );
  }
}




