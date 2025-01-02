

import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {

  List<Map<String, dynamic>> calls = [
    {
      "Name": "John Doe",
      "Time": "10:00 AM",
      "Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s",
      "CallType": "Missed",
    }, 
    {
      "Name": "John Doe",
      "Time": "10:00 AM",
      "Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s",
      "CallType": "atained",
    }, 
    {
      "Name": "John Doe",
      "Time": "10:00 AM",
      "Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s",
      "CallType": "Missed",
    }, 
    {
      "Name": "John Doe",
      "Time": "10:00 AM",
      "Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s",
      "CallType": "atained",
    }, 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text("Upper widget"),
          ),

          // all calls 
          Expanded(child: 
          ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(calls[index]["Profile"]),
                ),
                title: Text(calls[index]["Name"]),
                subtitle: Row(
                  children: [
                    Icon(calls[index]["CallType"] == "Missed" ? Icons.call_missed_outgoing : Icons.call_received, color: calls[index]["CallType"] == "Missed" ? Colors.red : Colors.green,),
                    Text(calls[index]["Time"]),
                  ],
                ),
                trailing: Icon(Icons.call),
              );
            },
          ))
        ],
      ),
    );
  }
}