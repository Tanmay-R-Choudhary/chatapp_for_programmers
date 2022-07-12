import 'package:app/pages/sign_in/controller/sign_in_controller.dart';
import 'package:app/pages/sign_up/binding/sign_up_binding.dart';
import 'package:app/pages/sign_up/view/sign_up.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInPageController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "email",
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AuthenticationServiceController.instance.signIn(
                    emailController.text.trim(),
                    passwordController.text.trim());
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(() => const SignUpPage(), binding: SignUpPageBinding());
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
