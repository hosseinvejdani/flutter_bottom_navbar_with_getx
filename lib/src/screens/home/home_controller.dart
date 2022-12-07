import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = AppPageNames.bottomNavbarNames;

  void changePage(int index) {
    if (currentIndex.value != index) {
      currentIndex.value = index;
      Get.offNamedUntil(pages[index], (page) => page.settings.name == AppPageNames.home, id: 1);
    }
  }

  Route? bottomNavBarOnGenerateRoute(RouteSettings settings) {
    return AppRoute.onGenerateRoute(settings);
  }
}
