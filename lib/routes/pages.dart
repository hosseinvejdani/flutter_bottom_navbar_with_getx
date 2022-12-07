import 'package:flutter_bottom_navbar_with_getx/routes/names.dart';
import 'package:get/get.dart';

import '../screens/screens.dart';

class AppRoute {
  AppRoute._();
  static final pages = [
    GetPage(
      name: AppPageName.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppPageName.another,
      page: () => const AnotherPage(),
      binding: AnotherBinding(),
    ),
  ];
}
