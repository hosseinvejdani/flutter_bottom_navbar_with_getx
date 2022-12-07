import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/names.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: AppPageNames.browse,
        onGenerateRoute: controller.bottomNavBarOnGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          destinations: const <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Browse',
            ),
            NavigationDestination(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: controller.changePage,
        ),
      ),
    );
  }
}
