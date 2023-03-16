import 'package:get/get.dart';

import '../controllers/election_screen_controller.dart';

class ElectionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectionScreenController>(
      () => ElectionScreenController(),
    );
  }
}
