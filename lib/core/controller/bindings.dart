import 'package:get/get.dart';
import 'package:radio_nepal/core/controller/home_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(), permanent: true);
  }
}
