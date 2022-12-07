import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'browse_controller.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Browse')),
      body: Center(
        child: Text(Get.find<BrowseController>().title.value),
      ),
    );
  }
}
