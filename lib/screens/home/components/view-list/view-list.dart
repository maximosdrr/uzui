import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzui/screens/home/components/connection-manager/connection-manager.dart';
import 'package:uzui/screens/home/components/sidebar/sidebar.controller.dart';

class ViewList extends StatelessWidget {
  ViewList({Key? key}) : super(key: key);
  final SidebarController sidebarController = Get.find();

  final List<Widget> views = [
    ConnectionManager(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (sidebarController.selectedView.value > views.length - 1) {
        return const Center(child: Text("Route not found"));
      }

      return views[sidebarController.selectedView.value];
    });
  }
}
