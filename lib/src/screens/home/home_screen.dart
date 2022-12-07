import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: controller.pages[0],
        onGenerateRoute: controller.bottomNavBarOnGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 65, // the default is 80
          destinations: <NavigationDestination>[
            NavigationDestination(icon: controller.icons[0], label: controller.labels[0]),
            NavigationDestination(icon: controller.icons[1], label: controller.labels[1]),
            NavigationDestination(icon: controller.icons[2], label: controller.labels[2]),
          ],
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: controller.changePage,
        ),
      ),
    );
  }
}
