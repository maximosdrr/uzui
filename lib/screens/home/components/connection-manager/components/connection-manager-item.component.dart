import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:uzui/screens/home/components/connection-manager/connection-manager.controller.dart';

class ConnectionManagerItem extends StatelessWidget {
  final String title;
  final int index;

  final ConnectionManagerController controller = Get.find();

  ConnectionManagerItem({
    Key? key,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ListTile(
        title: Text(title),
        trailing: SizedBox(
          width: 100,
          child: Obx(
            () {
              return Switch(
                value: controller.selectedConnectionIndex.value == index,
                onChanged: (v) {
                  print(index);
                  controller.setSelectedConnectionIndex(index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
