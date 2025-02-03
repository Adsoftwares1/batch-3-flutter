import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app_batch_3/1_30_2025_firestore_database/get_data_screen.dart';
import 'package:first_app_batch_3/1_30_2025_firestore_database/update_data_screen.dart';
import 'package:flutter/material.dart';

class InsertDataScreen extends StatefulWidget {
  @override
  _InsertDataScreenState createState() => _InsertDataScreenState();
}

class _InsertDataScreenState extends State<InsertDataScreen> {
  final TextEditingController studentNameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: studentNameController,
                decoration: InputDecoration(
                  labelText: 'Student Name',
                  errorStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter student name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: fatherNameController,
                decoration: InputDecoration(
                  labelText: 'Father Name',
                  errorStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter father name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: contactController,
                decoration: InputDecoration(
                  labelText: 'Contact',
                  errorStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  errorStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  if (_formKey.currentState!.validate()) {
                    // step no : 3
                    FirebaseFirestore firestoreObject =

                        FirebaseFirestore.instance;
                    // step no store data in firestore: 4
                    try {
                      await firestoreObject.collection("students").add({
                        "studentName": studentNameController.text,
                        "fatherName": fatherNameController.text,
                        "contact": contactController.text,
                        "address": addressController.text,
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Data Submitted successfully')),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString())),
                      );
                    }
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.amberAccent,
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                ),
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text('Submit', style: TextStyle(fontSize: 18)),
              ),

              // navigate to get data screen
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GetDataScreen()));
                },
                child: Text('Get Data'),
              ),

              //update data
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Update Data'),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
