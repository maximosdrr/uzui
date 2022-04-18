import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzui/tabs/tab.controller.dart';

import 'connection-manager/connection-manager.dart';

class ViewList extends StatelessWidget {
  ViewList({Key? key}) : super(key: key);
  final TabsController tabsController = Get.find();

  final List<Widget> views = [
    ConnectionManager(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (tabsController.selectedView.value > views.length - 1) {
        return const Center(child: Text("Route not found"));
      }

      return views[tabsController.selectedView.value];
    });
  }
}
