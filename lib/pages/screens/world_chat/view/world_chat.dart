import 'package:app/pages/screens/world_chat/controller/world_chat_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorldChat extends GetView<WorldChatController> {
  const WorldChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: const Center(
        child: Text(
          "WORLD CHAT PAGE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
