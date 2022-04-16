import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/connection-manager/connection-manager.controller.dart';

class ConnectionManager extends StatelessWidget {
  final ConnectionManagerController connectionManagerController = Get.find();

  ConnectionManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Connection manager"),
      ),
    );
  }
}
