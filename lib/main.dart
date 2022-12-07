import 'package:flutter/material.dart';
import 'package:flutter_bottom_navbar_with_getx/routes/names.dart';
import 'package:flutter_bottom_navbar_with_getx/routes/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPageName.home,
      defaultTransition: Transition.fade,
      getPages: AppRoute.pages,
    );
  }
}
