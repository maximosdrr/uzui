import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  increment() {
    counter++;
  }

  Future<void> connectAndQuery() async {
    try {
      var db = Db("mongodb://localhost:27017/uzui");
      await db.open();

      var collection = db.collection('uzui');

      var result = await collection.find({
        'hello': 'world',
      }).toList();

      print(result.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
