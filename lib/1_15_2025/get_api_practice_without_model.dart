import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiPractice extends StatefulWidget {
  const GetApiPractice({super.key});

  @override
  State<GetApiPractice> createState() => _GetApiPracticeState();
}

class _GetApiPracticeState extends State<GetApiPractice> {
  List<dynamic> postList = [];
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  await Future.delayed(Duration(seconds: 2));
                  String url = "https://jsonplaceholder.typicode.com/posts";
                  final response = await http.get(Uri.parse(url));
                  if (response.statusCode == 200) {
                    postList = jsonDecode(response.body);
                    setState(() {});
                    print("My Api Response body is : ${postList}");
                  } else {
                    print(
                        "My Api Response body is : ${response.body} and my status code is : ${response.statusCode}");
                  }
                  setState(() {
                    isLoading = false;
                  });
                },
                child: Text(
                  "Get Api",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Expanded(
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Divider(),
                            Text(
                              "${postList[index]['title']}",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(
                              "${postList[index]['body']}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ],
                        );
                      },
                      itemCount: postList.length,
                    )),
        ],
      ),
    );
  }
}
