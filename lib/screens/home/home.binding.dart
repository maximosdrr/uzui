import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/home.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
