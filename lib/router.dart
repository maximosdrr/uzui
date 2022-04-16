import 'package:get/get.dart';
import 'package:uzui/screens/connection-manager/connection-manager.binding.dart';
import 'package:uzui/screens/connection-manager/connection-manager.dart';
import 'package:uzui/screens/home/home.binding.dart';
import 'package:uzui/screens/home/home.dart';

List<GetPage<dynamic>> router = [
  GetPage(name: '/', page: () => Home(), binding: HomeBinding()),
  GetPage(
    name: '/connection-manager',
    page: () => ConnectionManager(),
    binding: ConnectionManagerBinding(),
  )
];
