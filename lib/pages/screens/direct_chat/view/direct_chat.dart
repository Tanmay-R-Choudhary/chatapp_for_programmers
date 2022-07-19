import 'package:app/pages/home/view/contact_card.dart';
import 'package:app/pages/home/view/stories_card.dart';
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
      body: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch(accentColor: cardColor)),
        child: SingleChildScrollView(
          child: Column(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Text(
                  "New messages",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              for (int i = 0; i < 10; i++)
                const Align(
                  alignment: Alignment.center,
                  child: ContactCard(),
                ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
