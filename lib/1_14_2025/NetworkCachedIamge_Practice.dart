
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkCachedIamge_Practice extends StatefulWidget {
  const NetworkCachedIamge_Practice({super.key});

  @override
  State<NetworkCachedIamge_Practice> createState() => _NetworkCachedIamge_PracticeState();
}
class _NetworkCachedIamge_PracticeState extends State<NetworkCachedIamge_Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        width: 200,
        height: 200,
        child: CachedNetworkImage(
          repeat: ImageRepeat.repeat,
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBc0zenQyqVpl85Qz7m87VndwG7ZSo6OzS5g&s",
          placeholder: (context, url) => Icon(Icons.person),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
      );
  }
}
