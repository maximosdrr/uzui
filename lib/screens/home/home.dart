import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/components/view-list/view-list.dart';
import 'package:uzui/screens/home/home.controller.dart';

import 'components/sidebar/sidebar.component.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final sideBarWidth = screenWidth * 0.2;
    final viewWidth = (sideBarWidth - screenWidth).abs();

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            SizedBox(
              height: screenHeight,
              width: sideBarWidth,
              child: HomeSidebar(),
            ),
            SizedBox(
              height: screenHeight,
              width: viewWidth,
              child: ViewList(),
            ),
          ],
        ),
      ),
    );
  }
}
