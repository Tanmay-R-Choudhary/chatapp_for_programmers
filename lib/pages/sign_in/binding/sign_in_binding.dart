import 'package:app/pages/sign_in/controller/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInPageController());
  }
}
