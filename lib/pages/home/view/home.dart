import 'package:app/pages/home/controller/home_controller.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.purple,
        child: Center(
            child: TextButton(
          child: const Text(
            "Logout",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          onPressed: () {
            AuthenticationServiceController.instance.signOut();
          },
        )),
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          "Hello ${AuthenticationServiceController.instance.auth.currentUser?.displayName ?? "err"}",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
