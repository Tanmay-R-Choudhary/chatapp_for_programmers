import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';

class WorldChatCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String post;
  const WorldChatCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        contentPadding: const EdgeInsets.all(10.0),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl, scale: 1.0),
          backgroundColor: Colors.blueGrey,
          radius: 40.0,
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        tileColor: cardColor,
        subtitle: Text(
          post,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
