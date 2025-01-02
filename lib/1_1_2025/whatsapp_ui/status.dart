
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<Map<String, dynamic>> StatusNotSeenYet = [
    {"Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s", "Name": "Alice Smith", "Time": "10:00 AM"},
    {"Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s", "Name": "Alice Smith", "Time": "10:00 AM"},
    {"Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s", "Name": "Alice Smith", "Time": "10:00 AM"},
   ];

  List<Map<String, dynamic>> StatusSeen = [
    {"Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s", "Name": "Alice Smith", "Time": "10:00 AM"},
    {"Profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEcUtOBjHYYxNETFX8OgTY28kxJ_dzUwmiQ&s", "Name": "Alice Smith", "Time": "10:00 AM"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // my own status
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // My status
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 40,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Icon(Icons.check_circle, color: Colors.white, size: 10)),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Text("My Status"),
                Spacer(),
                Icon(Icons.settings),
              ],
            ),
            
          ),
          SizedBox(height: 10),
          Text("Recent Updates"),
          Divider(
            color: Colors.green,
            thickness: 1,
          ),
          SizedBox(height: 10),
          // status not seen yet
          Flexible(
            flex: 2,
            child: ListView.builder(
              itemCount: StatusNotSeenYet.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(50),
                    strokeWidth: 2,
                    dashPattern: [10, 10],
                    color: Colors.green,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(StatusNotSeenYet[index]["Profile"]),
                    ),
                  ),
                  subtitle: Text(StatusNotSeenYet[index]["Name"], style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold  ),),
                  trailing: Text(StatusNotSeenYet[index]["Time"]),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text("Viewed Updates"),
          Divider(
            color: Colors.green,
            thickness: 1,
          ),
          SizedBox(height: 10),

          Flexible(
            flex: 2,
            child: ListView.builder(
              itemCount: StatusSeen.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(50),
                    strokeWidth: 2,
                    dashPattern: [10, 10],
                    color: Colors.grey,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(StatusSeen[index]["Profile"]),
                    ),
                  ),
                  subtitle: Text(StatusSeen[index]["Name"], style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold  ),),
                  trailing: Text(StatusSeen[index]["Time"]),
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}