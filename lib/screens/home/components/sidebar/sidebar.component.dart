import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzui/screens/home/components/sidebar/sidebar.controller.dart';
import 'package:uzui/screens/home/home.controller.dart';

class HomeSidebar extends StatelessWidget {
  final SidebarController sidebarController = Get.find();

  HomeSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        selectedIndex: sidebarController.selectedView.value,
        extended: true,
        onDestinationSelected: (v) async {
          sidebarController.selectedView(v);
        },
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.web),
            label: Text('Connections'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.manage_search),
            label: Text('Query tool'),
          ),
        ],
      ),
    );
  }
}
