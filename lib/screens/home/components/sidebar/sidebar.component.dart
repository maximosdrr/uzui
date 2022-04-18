import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzui/tabs/tab.controller.dart';

class HomeSidebar extends StatelessWidget {
  final TabsController tabController = Get.find();

  HomeSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        selectedIndex: tabController.selectedView.value,
        extended: true,
        onDestinationSelected: (v) async {
          tabController.selectedView(v);
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
