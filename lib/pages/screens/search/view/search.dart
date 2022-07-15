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
      body: const Center(
        child: Text(
          "SEARCH PAGE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
