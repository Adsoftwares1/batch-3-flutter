

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
        backgroundColor: Colors.amberAccent,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('students').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final data = snapshot.data?.docs;

          return ListView.builder(
            itemCount: data?.length ?? 0,
            itemBuilder: (context, index) {
              var student = data![index];
              return ListTile(
                title: Text(student['studentName']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Father Name: ${student['fatherName']}'),
                    Text('Contact: ${student['contact']}'),
                    Text('Address: ${student['address']}'),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
