import 'package:app/pages/sign_up/binding/sign_up_binding.dart';
import 'package:app/pages/sign_up/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
      initialBinding: SignUpPageBinding(),
    );
  }
}
