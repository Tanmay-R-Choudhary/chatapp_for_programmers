import 'package:app/pages/sign_in/binding/sign_in_binding.dart';
import 'package:app/pages/sign_in/view/sign_in.dart';
import 'package:app/pages/sign_up/controller/sign_up_controller.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpPageController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayNameController = TextEditingController();
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
              controller: displayNameController,
              decoration: const InputDecoration(
                hintText: "display name",
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "email",
              ),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AuthenticationServiceController.instance.signUp(
                    displayNameController.text.trim(),
                    emailController.text.trim(),
                    passwordController.text.trim());
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                "Create account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(() => const SignInPage(), binding: SignInPageBinding());
              },
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
