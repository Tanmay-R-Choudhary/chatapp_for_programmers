import 'package:app/pages/home/view/contact_card.dart';
import 'package:app/pages/screens/world/controller/world_controller.dart';
import 'package:app/pages/screens/world/view/world_chat_cards.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class WorldPage extends StatelessWidget {
  const WorldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WorldController());

    return Scaffold(
      backgroundColor: homeBackgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: Get.mediaQuery.size.height,
            width: Get.mediaQuery.size.width,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 150.0, bottom: 120.0),
              itemCount: controller.userInfo.length,
              itemBuilder: (context, idx) {
                return WorldChatCard(
                  imageUrl: controller.userInfo[idx][0],
                  name: controller.userInfo[idx][1],
                  post: controller.userInfo[idx][2],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20.0,
            ),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 20.0,
                    spreadRadius: 10.0,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  controller: controller.searchController,
                  cursorColor: Colors.black,
                  cursorHeight: 20.0,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Search for people here...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
