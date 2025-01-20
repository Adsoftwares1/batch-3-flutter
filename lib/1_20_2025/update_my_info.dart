import 'package:http/http.dart' as http;  

import 'package:flutter/material.dart';


class UpdateMyInfo extends StatefulWidget {
  const UpdateMyInfo({super.key});

  @override
  State<UpdateMyInfo> createState() => _UpdateMyInfoState();
}

class _UpdateMyInfoState extends State<UpdateMyInfo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update My Info'),
      ),
      body: Center(
        child: Column(
          children: [
            // name
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            // job
            TextField(
              controller: jobController,
              decoration: InputDecoration(
                labelText: 'Job',
              ),
            ),  
            // update button
            ElevatedButton(
              onPressed: () async{
                String url = 'https://reqres.in/api/users/2';

                final response = await http.put(Uri.parse(url), body: {
                  "name": nameController.text,
                  "job": jobController.text,
                });

                if(response.statusCode == 200){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Update success")));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Update failed ${response.body}")));
                }
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}