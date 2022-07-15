import 'package:app/pages/screens/direct_chat/view/direct_chat.dart';
import 'package:app/pages/screens/notifications/view/notifications.dart';
import 'package:app/pages/screens/search/view/search.dart';
import 'package:app/pages/screens/world_chat/view/world_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var screenNumber = 0.obs;
  List<Widget> screenList = [
    const WorldChat(),
    const SearchPage(),
    const NotificationsPage(),
    const DirectChatPage()
  ];
  void updateScreenIndex(int val) {
    screenNumber.value = val;
  }
}
