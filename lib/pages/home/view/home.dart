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
    var pageController = PageController();
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("clicked");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(50.0)),
                      child: Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.userGear,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Spacer(),
                          Text(
                            "Profile",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("clicked");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(50.0)),
                      child: Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.gear,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Spacer(),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("clicked");
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(50.0)),
                      child: Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.users,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Spacer(),
                          Text(
                            "Contacts",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print("clicked");
                        AuthenticationServiceController.instance.signOut();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0.0,
                          padding: const EdgeInsets.all(50.0)),
                      child: Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.gear,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Spacer(),
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.0,
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    controller.updateScreenIndex(0);
                    pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(FontAwesomeIcons.house),
                  color: controller.screenNumber.value == 0
                      ? Colors.amber
                      : Colors.white,
                  iconSize: 25.0,
                ),
                IconButton(
                  onPressed: () {
                    controller.updateScreenIndex(1);
                    pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  color: controller.screenNumber.value == 1
                      ? Colors.amber
                      : Colors.white,
                  iconSize: 25.0,
                ),
                IconButton(
                  onPressed: () {
                    controller.updateScreenIndex(2);
                    pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(FontAwesomeIcons.bell),
                  color: controller.screenNumber.value == 2
                      ? Colors.amber
                      : Colors.white,
                  iconSize: 25.0,
                ),
                IconButton(
                  onPressed: () {
                    controller.updateScreenIndex(3);
                    pageController.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(FontAwesomeIcons.envelope),
                  color: controller.screenNumber.value == 3
                      ? Colors.amber
                      : Colors.white,
                  iconSize: 25.0,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: homeBackgroundColor,
        body: PageView(
          controller: pageController,
          onPageChanged: (val) {
            controller.updateScreenIndex(val);
          },
          children: controller.screenList,
        ),
      ),
    );
  }
}
