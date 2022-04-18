import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/components/connection-manager/components/connection-manager-item.component.dart';

import 'connection-manager.controller.dart';

class ConnectionManager extends StatelessWidget {
  final ConnectionManagerController connectionManagerController = Get.find();

  ConnectionManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        child: Obx(
          () => ListView.builder(
            itemCount: connectionManagerController.connections.length,
            itemBuilder: (_, i) => ConnectionManagerItem(
              connectionData: connectionManagerController.connections[i],
              index: i,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
