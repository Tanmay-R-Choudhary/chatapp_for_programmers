import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var nameController = TextEditingController(text: "Tanmay Choudhary");
  var tagController = TextEditingController(text: '@tanmay_choudhary');
  var descriptionController = TextEditingController(
      text:
          "My compiler says there's an error on line 47. Line 47: print(\"this shit works\")");
  String userImageURL =
      'https://i.pinimg.com/736x/2b/00/50/2b00503b0661ff2778aeb91032010fa0.jpg';

  Widget itemEditor(
      String title, TextEditingController textController, bool isDecription) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: isDecription ? 130 : 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              keyboardType:
                  isDecription ? TextInputType.multiline : TextInputType.text,
              maxLines: isDecription ? null : 1,
              controller: textController,
              cursorColor: Colors.teal,
              cursorHeight: isDecription ? 15.0 : 20.0,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: isDecription ? 15.0 : 20.0,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
