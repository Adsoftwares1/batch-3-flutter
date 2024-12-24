import 'package:flutter/material.dart';

class DigitalWatch extends StatefulWidget {
  const DigitalWatch({super.key});

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
  int hour = 0;
  int minute = 0;
  int second = 0;

  void updateMyDigitalWatch() async{
    for (var i = 1; i < 24; i++) {
      for (var j = 1; j < 60; j++) {
        for (var k = 1; k < 60; k++) {
         await Future.delayed(const Duration(seconds: 1));
            print("time is $i:$j:$k");
            hour = i;
            minute = j;
            second = k;
            setState(() {});
        }
      }
    }
  }


  @override
  void initState() {
    updateMyDigitalWatch();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuild my ui");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Watch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$hour:$minute:$second",
              style: TextStyle(fontSize: 100, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
