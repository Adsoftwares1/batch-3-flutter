import 'package:first_app_batch_3/revission/screenB.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.abc)),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ScreenB();
                }));
              },
              child: Text('Navigate to Screen B')),
        ),
      ),
    );
  }
}
