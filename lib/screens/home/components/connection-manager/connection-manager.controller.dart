import 'package:get/state_manager.dart';
import 'package:uzui/screens/home/components/connection-manager/interfaces/connection.interface.dart';

class ConnectionManagerController extends GetxController {
  RxList<ConnectionData> connections = <ConnectionData>[].obs;

  @override
  onInit() {
    print("Loaded");
    super.onInit();
    loadConnections();
  }

  setConnection(ConnectionData connection) {
    connections.add(connection);
  }

  loadConnections() {
    var connA = ConnectionData(
      isActive: false,
      connectionUri: "",
      alias: "Connection A",
    );

    var connB = ConnectionData(
      isActive: false,
      connectionUri: "",
      alias: "Connection B",
    );

    var connC = ConnectionData(
      isActive: false,
      connectionUri: "",
      alias: "Connection C",
    );

    for (var conn in [connA, connB, connC]) {
      connections.add(conn);
    }
  }

  updateItemStatus(int index) {
    for (var i = 0; i < connections.length; i++) {
      if (i == index) {
        connections[index].isActive = true;
        continue;
      }

      connections[i].isActive = false;
    }
    connections.refresh();
  }
}
