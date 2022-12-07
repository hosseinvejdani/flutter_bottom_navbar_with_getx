import 'package:get/get.dart';

import '../../src.dart';

class AnotherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnotherController());
  }
}
