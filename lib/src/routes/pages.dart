import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../src.dart';

class AppRoute {
  AppRoute._();

  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppPageNames.home) {
      return GetPageRoute(
        settings: settings,
        page: () => const HomePage(),
        binding: HomeBinding(),
      );
    }

    if (settings.name == AppPageNames.another) {
      return GetPageRoute(
        settings: settings,
        page: () => const AnotherPage(),
        binding: AnotherBinding(),
      );
    }

    if (settings.name == AppPageNames.browse) {
      return GetPageRoute(
        settings: settings,
        page: () => const BrowsePage(),
        binding: BrowseBinding(),
      );
    }

    if (settings.name == AppPageNames.history) {
      return GetPageRoute(
        settings: settings,
        page: () => const HistoryPage(),
        binding: HistoryBinding(),
      );
    }

    if (settings.name == AppPageNames.settings) {
      return GetPageRoute(
        settings: settings,
        page: () => const SettingsPage(),
        binding: SettingsBinding(),
      );
    }

    return null;
  }
}
