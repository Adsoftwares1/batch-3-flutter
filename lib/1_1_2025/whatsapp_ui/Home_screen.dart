

import 'package:first_app_batch_3/1_1_2025/whatsapp_ui/calls.dart';
import 'package:first_app_batch_3/1_1_2025/whatsapp_ui/chats.dart';
import 'package:first_app_batch_3/1_1_2025/whatsapp_ui/status.dart';
import 'package:flutter/material.dart';

class WhatsappHomeScreen extends StatefulWidget {
  const WhatsappHomeScreen({super.key});

  @override
  State<WhatsappHomeScreen> createState() => _WhatsappHomeScreenState();
}

class _WhatsappHomeScreenState extends State<WhatsappHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // chats screen
            Chats(),
            // status screen
            StatusScreen(),
            // calls screen
            CallsScreen(),
          ],
        ),
      ),
    ) ;
  }
}