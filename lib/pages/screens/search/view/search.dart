import 'package:app/pages/home/view/contact_card.dart';
import 'package:app/pages/screens/search/controller/search_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchPageController());

    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: Stack(
        children: [
          SizedBox(
            height: Get.mediaQuery.size.height,
            width: Get.mediaQuery.size.width,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 150.0, bottom: 80.0),
              itemCount: 7,
              itemBuilder: (context, idx) {
                return const ContactCard();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
            child: Container(
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: textFieldColor,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.5,
                    spreadRadius: 5.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search contacts...")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
