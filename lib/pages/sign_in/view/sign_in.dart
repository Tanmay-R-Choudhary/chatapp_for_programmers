import 'package:app/pages/sign_in/controller/sign_in_controller.dart';
import 'package:app/pages/sign_up/binding/sign_up_binding.dart';
import 'package:app/pages/sign_up/view/sign_up.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInPageController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              cursorColor: Colors.teal,
              autocorrect: false,
              controller: emailController,
              style: const TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                hintText: "Email?",
                hintStyle: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            TextField(
              cursorColor: Colors.teal,
              autocorrect: false,
              obscureText: true,
              controller: passwordController,
              style: const TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
                hintText: "Password?",
                hintStyle: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  AuthenticationServiceController.instance.signIn(
                      emailController.text.trim(),
                      passwordController.text.trim());
                },
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                icon: const Icon(FontAwesomeIcons.arrowRight),
                label: const Text(
                  "Let's go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(() => const SignUpPage(), binding: SignUpPageBinding());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0.0,
              ),
              child: const Text(
                "I don't think I'm there in the database...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
