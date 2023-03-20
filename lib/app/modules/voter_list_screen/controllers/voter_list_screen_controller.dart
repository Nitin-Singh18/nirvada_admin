import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/voter_user_mode.dart';
import 'package:nirvada_admin/app/modules/voter_list_screen/functions/voter_list_functions.dart';

class VoterListScreenController extends GetxController {
  List<VoterUserModel> model = [];

  @override
  void onInit() {
    super.onInit();
    onGetVoterList();
  }

  void onGetVoterList() async {
    model = await VoterListFunction.getAllVoters();

    update();
  }
}
