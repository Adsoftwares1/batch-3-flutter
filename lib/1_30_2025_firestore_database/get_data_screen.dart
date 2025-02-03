import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app_batch_3/1_30_2025_firestore_database/update_data_screen.dart';
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
                    Text('Document ID: ${student.id}'),
                  ],
                ),
                trailing: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateDataScreen(
                                stdNamePassed: student["studentName"],
                                stdFatherNamePassed: student['fatherName'],
                                stdContactPassed: student['contact'],
                                stdAddressPassed: student['address'],
                                stdIdPassed: student.id,
                              ),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.green,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        FirebaseFirestore obj =  FirebaseFirestore.instance;
                        await obj.collection("students").doc(student.id).delete();
                      },

                      child: Icon(
                        Icons.delete,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
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
