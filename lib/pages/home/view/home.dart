import 'package:app/pages/home/controller/home_controller.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        endDrawer: Drawer(
          backgroundColor: drawerColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
          ),
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
        bottomNavigationBar: Container(
          height: 80.0,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.house),
                color: Colors.white,
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                color: Colors.white,
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.bell),
                color: Colors.white,
                iconSize: 25.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.envelope),
                color: Colors.white,
                iconSize: 25.0,
              ),
            ],
          ),
        ),
        backgroundColor: homeBackgroundColor,
        body: Center(
          child: Text(
            "Hello ${AuthenticationServiceController.instance.auth.currentUser?.displayName ?? "err"}",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
