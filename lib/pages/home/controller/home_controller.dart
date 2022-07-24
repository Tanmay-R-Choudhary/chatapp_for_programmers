import 'package:app/pages/screens/direct_chat/view/direct_chat.dart';
import 'package:app/pages/screens/search/view/search.dart';
import 'package:app/pages/screens/world/view/world.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var pageController = PageController(initialPage: 1);
  var screenNumber = 1.obs;
  List<Widget> screenList = [
    const SearchPage(),
    const DirectChatPage(),
    const WorldPage(),
  ];
  void updateScreenIndex(int val) {
    screenNumber.value = val;
  }
}
