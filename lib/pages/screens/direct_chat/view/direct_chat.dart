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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Stories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
              itemCount: 10,
              itemBuilder: (context, idx) {
                return const StoriesCard();
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Contacts",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: Get.mediaQuery.size.height - 350,
            child: ListView.builder(
              shrinkWrap: false,
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              itemCount: 10,
              itemBuilder: (context, idx) {
                return const ContactCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StoriesCard extends StatelessWidget {
  const StoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      height: 100.0,
      width: 100.0,
      color: Color.fromARGB(255, 232, 218, 128),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 100.0,
      width: 100.0,
      color: Color.fromARGB(255, 232, 218, 128),
    );
  }
}
