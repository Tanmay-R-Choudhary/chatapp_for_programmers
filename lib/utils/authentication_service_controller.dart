import 'package:flutter/material.dart';
import 'package:app/pages/home/binding/home_binding.dart';
import 'package:app/pages/home/view/home.dart';
import 'package:app/pages/sign_in/binding/sign_in_binding.dart';
import 'package:app/pages/sign_in/view/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationServiceController extends GetxController {
  static AuthenticationServiceController instance = Get.find();
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initaliseScreen);
  }

  _initaliseScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SignInPage(), binding: SignInPageBinding());
    } else {
      Get.offAll(() => const HomePage(), binding: HomePageBinding());
    }
  }

  void signUp(String displayName, String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await auth.currentUser?.updateDisplayName(displayName);
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    }
  }

  void signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    }
  }

  void signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          snackPosition: SnackPosition.TOP, backgroundColor: Colors.white);
    }
  }
}
