import 'package:get/get.dart';

class TabsController extends GetxController {
  var selectedView = 0.obs;

  setSelectedView(int i) {
    selectedView = i.obs;
  }
}
