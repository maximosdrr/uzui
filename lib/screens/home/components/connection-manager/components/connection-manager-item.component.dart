import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/components/connection-manager/connection-manager.controller.dart';
import 'package:uzui/screens/home/components/connection-manager/interfaces/connection.interface.dart';

class ConnectionManagerItem extends StatelessWidget {
  final ConnectionData connectionData;
  final int index;

  final ConnectionManagerController controller = Get.find();

  ConnectionManagerItem({
    Key? key,
    required this.connectionData,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ListTile(
        onTap: () {
          controller.updateItemStatus(index);
        },
        title: Text(connectionData.alias),
        trailing: SizedBox(
          width: 100,
          child: Switch(
            value: connectionData.isActive,
            onChanged: (v) {
              controller.updateItemStatus(index);
            },
          ),
        ),
      ),
    );
  }
}
