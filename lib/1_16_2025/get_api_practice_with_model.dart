import 'dart:convert';

import 'package:first_app_batch_3/1_16_2025/get_api_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiPracticeWithModel extends StatefulWidget {
  const GetApiPracticeWithModel({super.key});

  @override
  State<GetApiPracticeWithModel> createState() => _GetApiPracticeWithModelState();
}

class _GetApiPracticeWithModelState extends State<GetApiPracticeWithModel> {
  List<PostModel> postList = [];
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
                    postList = (jsonDecode(response.body) as List).map((singleObjectData) => PostModel.fromJson(singleObjectData)).toList();
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
                              postList[index].title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(
                              postList[index].body,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            Divider(),
                            Text("userId: ${postList[index].userId}"),
                            Divider(),
                            Text("id: ${postList[index].id}"),
                            Divider(),
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
