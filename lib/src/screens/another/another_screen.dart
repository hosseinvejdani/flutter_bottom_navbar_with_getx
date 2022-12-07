import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../src.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('History')),
      body: Center(
        child: Text(Get.find<AnotherController>().title.value),
      ),
    );
  }
}
