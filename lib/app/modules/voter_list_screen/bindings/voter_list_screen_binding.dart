import 'package:get/get.dart';

import '../controllers/voter_list_screen_controller.dart';

class VoterListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VoterListScreenController>(
      () => VoterListScreenController(),
    );
  }
}
