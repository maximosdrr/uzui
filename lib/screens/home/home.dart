import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/home.controller.dart';

import 'components/sidebar.component.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            HomeSidebar(),
            // Container(
            //   child: Text("Hello world!"),
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {controller.connectAndQuery()},
      ),
    );
  }
}
