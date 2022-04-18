import 'package:get/instance_manager.dart';
import 'package:uzui/tabs/tab.controller.dart';
import 'package:uzui/screens/home/home.controller.dart';
import 'package:uzui/tabs/connection-manager/connection-manager.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<ConnectionManagerController>(ConnectionManagerController());
    Get.put<TabsController>(TabsController());
  }
}
