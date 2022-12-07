import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'history_controller.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('History')),
      body: Center(
        child: Text(Get.find<HistoryController>().title.value),
      ),
    );
  }
}
