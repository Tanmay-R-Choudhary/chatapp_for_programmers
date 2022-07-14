import 'package:app/pages/screens/world_chat/controller/world_chat_controller.dart';
import 'package:get/get.dart';

class WorldChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WorldChatController());
  }
}
