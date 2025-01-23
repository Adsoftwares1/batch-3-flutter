

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreenSharedPrefrences extends StatefulWidget {
  const HomeScreenSharedPrefrences({super.key});

  @override
  State<HomeScreenSharedPrefrences> createState() => _HomeScreenSharedPrefrencesState();
}

class _HomeScreenSharedPrefrencesState extends State<HomeScreenSharedPrefrences> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  late SharedPreferences sharedPreferencesObject;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      sharedPreferencesObject = await SharedPreferences.getInstance();
    });
  }
  

  String name = "";
  String contact = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // name
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            // contact
            TextField(
              controller: contactController,
              decoration: InputDecoration(
                hintText: "Enter your contact",
              ),
            ),

            // save button
            ElevatedButton(onPressed: (){
              sharedPreferencesObject.setString("name", nameController.text);
              sharedPreferencesObject.setString("contact", contactController.text);
              nameController.clear();
              contactController.clear();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Saved")));
            }, child: Text("Save")),

            SizedBox(height: 10),

            // get button
            ElevatedButton(onPressed: (){
              name = sharedPreferencesObject.getString("name") ?? "";
              contact = sharedPreferencesObject.getString("contact") ?? "";
              setState(() {
                
              });
            }, child: Text("Get")),

            // show data
            Text("My Name is: ${name}"),
            Text("My Contact is: ${contact}"),

            // delete button
            ElevatedButton(onPressed: (){
              sharedPreferencesObject.remove("name");
              sharedPreferencesObject.remove("contact");
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Deleted")));
            }, child: Text("Delete")),
          ],
        )
      ) ,
    );
  }
}