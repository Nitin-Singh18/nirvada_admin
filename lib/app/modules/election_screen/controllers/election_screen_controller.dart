import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/election_model.dart';
import 'package:nirvada_admin/app/modules/election_screen/functions/functions.dart';

class ElectionScreenController extends GetxController {
  List<DropdownMenuItem> item = [
    DropdownMenuItem(
        value: "Election Ongoing", child: Text("Election Ongoing")),
    DropdownMenuItem(value: "Election Ended", child: Text("Election Ended"))
  ];
  String dropDownValue = "Election Ongoing";

  final electionData = ElectionModel.fromJson(Get.arguments);

  void onSendAlertMessage() async {
    await ElectionFunction.sendAlertMessage(
        int.parse(electionData.electionDate));
  }

  void onSendLoginCrendentials() async {
    await ElectionFunction.sendLoginMessage();
  }
}
