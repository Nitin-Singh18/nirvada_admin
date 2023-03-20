import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nirvada_admin/app/data/models/candidate_model.dart';
import 'package:nirvada_admin/app/data/models/election_model.dart';
import 'package:nirvada_admin/app/data/widgets/cButton.dart';
import 'package:nirvada_admin/app/data/widgets/candidateTile.dart';
import 'package:nirvada_admin/app/data/widgets/textField.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';
import 'package:uuid/uuid.dart';

class CreateElectionController extends GetxController {
  TextEditingController candidateNameController = TextEditingController();
  TextEditingController candidatePartyController = TextEditingController();
  TextEditingController electionName = TextEditingController();
  List<CandidateModel> candidateModeList = [];
  String base64EncodedCandidateImage = "";
  String base64EncodedCandidatePartyImage = "";

  String date = "Select Election Date";
  RxString startTime = "Select Alloted Election Start Time".obs;
  RxString endTime = "Select Alloted Election End Time".obs;
  String electionType = "State";
  String state = "Haryana";
  // TimeOfDay startTime = TimeOfDay.now();

//   Future<void> selectTime(BuildContext context) async {
//     await showTimePicker(
//         context: context,
//         initialTime: TimeOfDay.now(),
//         builder: (BuildContext context, Widget? child) {
//           return MediaQuery(
//               data:
//                   MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
//               child: child!);
//         }).then((pickedDate) {
//       if (pickedDate != null && pickedDate != startTime) {
//         startTime = pickedDate;
//         update();
//       }
//     });
//   }

  void onChangeEndTime() {}

  void onCandidateList(context, int itemCount) {
    Get.dialog(AlertDialog(
      content: Container(
        height: 700.h,
        width: 440.w,
        color: Colors.white,
        child: ListView.builder(
          itemCount: candidateModeList.length,
          itemBuilder: (context, index) {
            return CandidateTile(
              model: candidateModeList[index],
            );
          },
        ),
      ),
    ));
  }

  void onAddCandidate(context, int itemCount) {
    Get.dialog(
      AlertDialog(
        contentPadding: EdgeInsets.all(18.h),
        content: Container(
          height: 500.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XText(
                text: "Add Candidate",
                fontWeight: FontWeight.w600,
                size: 32.sp,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomTextField(
                title: "Candidate Name",
                hintText: "Enter the name of the candidate",
                controller: candidateNameController,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                title: "Candidate Party Name",
                hintText: "Enter the candidate party name",
                controller: candidateNameController,
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        height: 100.h,
                        alignment: Alignment.center,
                        color: Color(0x4DD9D9D9),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_a_photo,
                                color: Color(0xff1b1b1b),
                              ),
                              XText(
                                text: "Add party symbol",
                                size: 14.sp,
                              )
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  CButton(
                    title: "Add Picture",
                    width: 100.h,
                    height: 100.h,
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CButton(
                title: "Create Election",
                onTap: () {},
                width: 440.w,
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPickImage() async {
    final pickedImage =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final bytes = await File(pickedImage.path).readAsBytes();
      base64EncodedCandidateImage = base64Encode(bytes);
    }
  }

  void onCreateElection() async {
    String electionId = Uuid().v1();

    ElectionModel electionModel = ElectionModel(
      electionId: electionId,
      electionName: electionName.text,
      electionType: electionType,
      electionState: state,
      electionDate: date,
      electionStartingTime: "",
      electionEndingTime: "",
    );

    

  }

  List<String> subAreaList = [
    "Gurgaon",
    "Faridabad",
    "Badshahpur",
    "Chandigarh",
  ];
}
