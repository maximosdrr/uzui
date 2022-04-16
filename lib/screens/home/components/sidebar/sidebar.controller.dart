import 'package:get/get.dart';

class SidebarController extends GetxController {
  var selectedView = 0.obs;

  setSelectedView(int i) {
    selectedView = i.obs;
  }
}
