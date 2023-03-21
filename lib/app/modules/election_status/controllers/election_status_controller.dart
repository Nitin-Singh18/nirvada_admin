import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/candidate_model.dart';
import 'package:nirvada_admin/app/modules/election_screen/functions/functions.dart';
import 'package:nirvada_admin/app/modules/election_status/functions/functions.dart';

class ElectionStatusController extends GetxController {
  //TODO: Implement ElectionStatusController

  List<List<CandidateModel>> model = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllCandidates();
  }

  void getAllCandidates() async {
    List<CandidateModel>? allAreaCandidates =
        await ElectionStatusFunction.getAllCandidateDetails();

    List<CandidateModel> subAreaCandidates = [];

    if (allAreaCandidates != null) {
      for (var i = 0; i < allAreaCandidates.length; i++) {
        String boothLocation = allAreaCandidates[0].booth;

        if (boothLocation == allAreaCandidates[i].booth) {
          subAreaCandidates.add(allAreaCandidates[i]);
        } else {
          model.add(subAreaCandidates);
          subAreaCandidates.clear();
          boothLocation = allAreaCandidates[i].booth;
        }
      }
    } else {
      print("No Data");
    }

    for (var i = 0; i < model.length; i++) {
      for (var j = 0; i < model[i].length; i++) {
        print(model[i][j].booth);
      }
    }
  }
}
