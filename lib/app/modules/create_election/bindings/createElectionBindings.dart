import 'package:get/get.dart';
import 'package:nirvada_admin/app/modules/create_election/controllers/createElectionController.dart';


class CreateElectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateElectionController>(
      () => CreateElectionController(),
    );
  }
}
