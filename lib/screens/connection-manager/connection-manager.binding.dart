import 'package:get/instance_manager.dart';
import 'package:uzui/screens/connection-manager/connection-manager.controller.dart';

class ConnectionManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ConnectionManagerController>(ConnectionManagerController());
  }
}
