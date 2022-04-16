import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/components/sidebar/sidebar.controller.dart';
import 'package:uzui/screens/home/home.controller.dart';

import 'components/connection-manager/connection-manager.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<ConnectionManagerController>(ConnectionManagerController());
    Get.put<SidebarController>(SidebarController());
  }
}
