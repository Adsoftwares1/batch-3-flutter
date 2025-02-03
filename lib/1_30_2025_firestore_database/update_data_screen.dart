import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDataScreen extends StatefulWidget {
  String stdNamePassed;
  String stdFatherNamePassed;
  String stdContactPassed;
  String? stdAddressPassed;
  String stdIdPassed;

  UpdateDataScreen({required this.stdContactPassed, required this.stdFatherNamePassed, required this.stdNamePassed,  this.stdAddressPassed, required this.stdIdPassed});
  


  @override
  _UpdateDataScreenState createState() => _UpdateDataScreenState();
}


class _UpdateDataScreenState extends State<UpdateDataScreen> {
  final TextEditingController studentNameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    studentNameController.text = widget.stdNamePassed;
    fatherNameController.text = widget.stdFatherNamePassed;
    contactController.text = widget.stdContactPassed;
    addressController.text = widget.stdAddressPassed ?? "";
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Student Information'),
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
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _updateData();
                  }

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                ),
                child: isLoading ? CircularProgressIndicator() : Text('Update', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),

        ),
      ),
    );
  }

  Future<void> _updateData() async {
    setState(() {
      isLoading = true;
    });
    final studentName = studentNameController.text;
    final fatherName = fatherNameController.text;
    final contact = contactController.text;
    final address = addressController.text;


    FirebaseFirestore obj = FirebaseFirestore.instance;
    try {
      await obj.collection("students").doc(widget.stdIdPassed).update({
        "studentName": studentName,
        "fatherName": fatherName,
        "contact": contact,
        "address": address,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data Updated')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error Updating Data ${e.toString()}')),
      );
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }


  }

