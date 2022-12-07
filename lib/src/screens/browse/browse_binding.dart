import 'package:get/get.dart';

import '../../src.dart';

class BrowseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BrowseController());
  }
}
