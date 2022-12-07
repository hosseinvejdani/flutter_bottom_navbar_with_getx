import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings._controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<SettingsController>().title.value),
            ElevatedButton(
              child: const Text('Another Page'),
              onPressed: () => Get.toNamed('/another'),
            ),
          ],
        ),
      ),
    );
  }
}
