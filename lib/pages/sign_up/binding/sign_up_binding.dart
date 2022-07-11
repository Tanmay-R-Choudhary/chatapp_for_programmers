import 'package:app/pages/sign_up/controller/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpPageController());
  }
}
