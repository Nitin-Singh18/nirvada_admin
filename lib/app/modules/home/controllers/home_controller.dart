import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/election_model.dart';
import 'package:nirvada_admin/app/modules/home/functions/home_functions.dart';

class HomeController extends GetxController {
  List<ElectionModel> model = [];

  // @override
  // void onInit() {
  //   super.onInit();
  //   onGetElectionData();
  // }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    onGetElectionData();
  }

  void onGetElectionData() async {
    model = await HomeFunctions.getElectionDetails() ?? [];

    update();
  }
}
