


import 'package:flutter/material.dart';

class ListViewBuilderPractice extends StatefulWidget {
  const ListViewBuilderPractice({super.key});

  @override
  State<ListViewBuilderPractice> createState() => _ListViewBuilderPracticeState();
}

class _ListViewBuilderPracticeState extends State<ListViewBuilderPractice> {

  List<Map<String, dynamic>> myWhatsappChats = [
    {"name": "John", "lastMessage": "Hello, how are you?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "12:00 PM"},
    {"name": "Jane", "lastMessage": "I'm fine, thank you!", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "1:00 PM"},
    {"name": "Jim", "lastMessage": "What's up?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "2:00 PM"},
    {"name": "Jill", "lastMessage": "I'm good, thanks!", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "3:00 PM"},
    {"name": "Jack", "lastMessage": "How's it going?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "4:00 PM"},
    {"name": "Jenny", "lastMessage": "I'm doing well, thanks for asking!", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "5:00 PM"},
    {"name": "Jake", "lastMessage": "What's new?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "6:00 PM"},
    {"name": "Jill", "lastMessage": "I'm good, thanks!", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "3:00 PM"},
    {"name": "Jack", "lastMessage": "How's it going?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "4:00 PM"},
    {"name": "Jenny", "lastMessage": "I'm doing well, thanks for asking!", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "5:00 PM"},
    {"name": "Jake", "lastMessage": "What's new?", "profilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4QY9_w3P5qpB1db2RqYEhrVRzQhcxREolw&s", "time": "6:00 PM"},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myWhatsappChats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(myWhatsappChats[index]["profilePic"]),
            ),
            trailing: Column(
              children: [
                Text(myWhatsappChats[index]["time"]),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text("1", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            title: Text(myWhatsappChats[index]["name"]),
            subtitle: Row(
              children: [
                Icon(Icons.check_circle, size: 10,),
                Text(myWhatsappChats[index]["lastMessage"]),
              ],
            ),
            
          );
      }),
    );
  }
}