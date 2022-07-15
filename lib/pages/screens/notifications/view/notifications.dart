import 'package:app/pages/screens/notifications/controller/notifications_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NotificationsPageController());

    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: const Center(
        child: Text(
          "NOTIFICATIONS PAGE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
