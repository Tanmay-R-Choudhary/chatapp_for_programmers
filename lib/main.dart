import 'package:app/firebase_options.dart';
import 'package:app/pages/sign_up/binding/sign_up_binding.dart';
import 'package:app/pages/sign_up/view/sign_up.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthenticationServiceController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
      initialBinding: SignUpPageBinding(),
    );
  }
}
