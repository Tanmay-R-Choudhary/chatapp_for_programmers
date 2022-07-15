import 'package:app/pages/screens/direct_chat/controller/direct_chat_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DirectChatPage extends StatelessWidget {
  const DirectChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DirectChatPageController());

    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: const Center(
        child: Text(
          "DIRECT CHAT PAGE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
