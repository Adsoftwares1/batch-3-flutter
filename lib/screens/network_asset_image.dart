import 'package:flutter/material.dart';

class NetworkAssetImage extends StatefulWidget {
  const NetworkAssetImage({super.key});

  @override
  State<NetworkAssetImage> createState() => _NetworkAssetImageState();
}

class _NetworkAssetImageState extends State<NetworkAssetImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.blue,
        height: 2000,
        width: 1000,
        child: Image.asset("assets/fruit.jpg", height: 1000, width: 200, fit: BoxFit.cover,),
        
        // Image.network(
        //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMkBbQ_DxYAZu4rfOP4BgYo9NPektkMPob7Q&s",
        //   height: 1000,
        //   width: 200,
        //   fit: BoxFit.cover,
        //   color: Colors.red,
        // ),
      ),
      ),
    );
  }
}
