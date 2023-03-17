import 'package:get/get.dart';

import '../controllers/election_status_controller.dart';

class ElectionStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectionStatusController>(
      () => ElectionStatusController(),
    );
  }
}
