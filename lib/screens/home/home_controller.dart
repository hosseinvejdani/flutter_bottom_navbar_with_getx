import 'package:flutter/material.dart';
import 'package:flutter_bottom_navbar_with_getx/routes/names.dart';
import 'package:get/get.dart';

import '../screens.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>[
    AppPageName.browse,
    AppPageName.history,
    AppPageName.settings,
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.offNamedUntil(
      pages[index],
      (page) => page.settings.name == AppPageName.home,
      id: 1,
    );
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppPageName.browse) {
      return GetPageRoute(
        settings: settings,
        page: () => const BrowsePage(),
        binding: BrowseBinding(),
      );
    }

    if (settings.name == AppPageName.history) {
      return GetPageRoute(
        settings: settings,
        page: () => const HistoryPage(),
        binding: HistoryBinding(),
      );
    }

    if (settings.name == AppPageName.settings) {
      return GetPageRoute(
        settings: settings,
        page: () => const SettingsPage(),
        binding: SettingsBinding(),
      );
    }

    return null;
  }
}
