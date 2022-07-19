import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
