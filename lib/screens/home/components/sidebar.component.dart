import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uzui/screens/home/home.controller.dart';

class HomeSidebar extends StatelessWidget {
  final HomeController homeController = Get.find();

  HomeSidebar({Key? key}) : super(key: key);

  final Map<int, String> routes = {0: '/connection-manager', 1: '/query-tool'};

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      extended: true,
      onDestinationSelected: (v) async {
        print(routes[v]);
        await Get.toNamed(routes[v] ?? "/");
      },
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.web),
          label: Text('Manage your connections'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.manage_search),
          label: Text('Query tool'),
        ),
      ],
    );
  }
}
