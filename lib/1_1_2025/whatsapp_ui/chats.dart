

import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  // list of chats
  List<Map<String, dynamic>> chats = [
    {"name": "Alice Smith", "message": "How's it going?", "time": "10:00 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s"},
    {"name": "Bob Johnson", "message": "All good here!", "time": "10:01 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrKxfjTf49GAtu0PpFXK7mKBgqyJ5MfJCgQw&s"},
    {"name": "Alice Smith", "message": "How's it going?", "time": "10:00 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxzM_e4qVtnPZttfPhbjcPssC78WndotRPg&s"},
    {"name": "Bob Johnson", "message": "All good here!", "time": "10:01 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrKxfjTf49GAtu0PpFXK7mKBgqyJ5MfJCgQw&s"},
    {"name": "Charlie Brown", "message": "Let's catch up!", "time": "10:02 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z1g1g1g1g1g1g1g1g1g1g1g1g1g1g1g1g1g&s"},
    {"name": "Diana Prince", "message": "See you later!", "time": "10:03 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y&s"},
    {"name": "Ethan Hunt", "message": "Mission accomplished!", "time": "10:04 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z&s"},
    {"name": "Fiona Gallagher", "message": "What's the plan?", "time": "10:05 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A&s"},
    {"name": "George Costanza", "message": "Just checking in!", "time": "10:06 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B&s"},
    {"name": "Hannah Montana", "message": "Ready for the weekend?", "time": "10:07 AM", "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C&s"},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chats[index]["profile"]),
          ),
          title: Text(chats[index]["name"]),
          subtitle: Text(chats[index]["message"]),
          trailing: Text(chats[index]["time"]),

        );
      },
    );
  }
}