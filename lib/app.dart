import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:uzui/router.dart';
import 'package:uzui/theme.dart';

class Uzui extends StatelessWidget {
  const Uzui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Uzui',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: "/",
      getPages: router,
    );
  }
}
