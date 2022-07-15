import 'package:app/pages/sign_in/binding/sign_in_binding.dart';
import 'package:app/pages/sign_in/view/sign_in.dart';
import 'package:app/pages/sign_up/controller/sign_up_controller.dart';
import 'package:app/utils/authentication_service_controller.dart';
import 'package:app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpPageController> {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayNameController = TextEditingController();
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
              controller: displayNameController,
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
                hintText: "What should we call you?",
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
              width: 200.0,
              child: ElevatedButton.icon(
                onPressed: () {
                  AuthenticationServiceController.instance.signUp(
                      displayNameController.text.trim(),
                      emailController.text.trim(),
                      passwordController.text.trim());
                },
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                icon: const Icon(FontAwesomeIcons.userPlus),
                label: const Text(
                  "Create account",
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
                Get.off(() => const SignInPage(), binding: SignInPageBinding());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0.0,
              ),
              child: const Text(
                "I am pretty sure my details exist in the database...",
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
