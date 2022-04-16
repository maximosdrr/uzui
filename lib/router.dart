import 'package:get/get.dart';
import 'package:uzui/screens/home/home.binding.dart';
import 'package:uzui/screens/home/home.dart';

List<GetPage<dynamic>> router = [
  GetPage(name: '/', page: () => Home(), binding: HomeBinding())
];
