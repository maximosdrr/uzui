import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class ConnectionManagerController extends GetxController {
  RxInt selectedConnectionIndex = (-1).obs;

  setSelectedConnectionIndex(int i) {
    selectedConnectionIndex = i.obs;
  }
}
