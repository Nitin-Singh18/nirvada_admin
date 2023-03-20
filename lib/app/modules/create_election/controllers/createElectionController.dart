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
import 'package:nirvada_admin/app/modules/create_election/functions/create_election_fucntions.dart';
import 'package:uuid/uuid.dart';

class CreateElectionController extends GetxController {
  TextEditingController candidateNameController = TextEditingController();
  TextEditingController candidatePartyController = TextEditingController();
  TextEditingController electionName = TextEditingController();
  List<CandidateModel> candidateModeList = [];
  String base64EncodedCandidateImage = "";
  String base64EncodedCandidatePartyImage = "";

  RxString date = "Select Election Date".obs;
  RxString startTime = "Select Alloted Election Start Time".obs;
  RxString endTime = "Select Alloted Election End Time".obs;
  RxString electionType = "State".obs;
  String state = "Haryana";
  String electionId = "";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    electionId = Uuid().v1();
  }
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

  void onChangeElectionDate(BuildContext context) async {
    final initialDate = DateTime.now();

    DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: initialDate,
      lastDate: DateTime(2050),
    );

    if (datePicked != null) {
      date.value = "${datePicked.day}-${datePicked.month}-${datePicked.year}";
    }
  }

  void onChangeEndTime(BuildContext context) async {
    final currentTime = TimeOfDay.now();

    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: currentTime,
    );

    if (time != null && time != currentTime) {
      endTime.value = time.format(context);
    }
  }

  void onChangeStartTime(BuildContext context) async {
    final currentTime = TimeOfDay.now();

    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: currentTime,
    );

    if (time != null && time != currentTime) {
      startTime.value = time.format(context);
    }
  }

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

  void onAddCandidate(String booth, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
                controller: candidatePartyController,
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        onPickImage(1);
                      },
                      child: Container(
                          height: 100.h,
                          alignment: Alignment.center,
                          color: Color(0x4DD9D9D9),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add_a_photo,
                                  color: Color(0xff1b1b1b),
                                ),
                                XText(
                                  text: "Add party symbol",
                                  size: 10.sp,
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  CButton(
                    title: "Add Picture",
                    width: 100.h,
                    height: 100.h,
                    onTap: () {
                      onPickImage(0);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CButton(
                title: "Add Candidate",
                onTap: () {
                  final candidateId = Uuid().v1();

                  candidateModeList.add(
                    CandidateModel(
                      candidateId: candidateId,
                      electionId: electionId,
                      candidateName: candidateNameController.text,
                      candidatePartyName: candidatePartyController.text,
                      candidatePartySign: base64EncodedCandidatePartyImage,
                      candidateImage: base64EncodedCandidateImage,
                      candidateVoteCount: 0,
                      booth: booth,
                    ),
                  );
                  candidateNameController.clear();
                  candidatePartyController.clear();
                  base64EncodedCandidateImage = "";
                  base64EncodedCandidatePartyImage = "";

                  Navigator.pop(context);
                },
                width: 440.w,
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPickImage(int number) async {
    final pickedImage =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      final bytes = await pickedImage.readAsBytes();
      if (number == 0) {
        base64EncodedCandidateImage = base64Encode(bytes);
        print(base64EncodedCandidateImage);
      } else {
        base64EncodedCandidatePartyImage = base64Encode(bytes);
        print(base64EncodedCandidatePartyImage);
      }
    }
  }

  void onCreateElection() async {
    List<BoothModel> booths = [
      BoothModel(location: "haryana/gurgaon"),
      BoothModel(location: "haryana/faridabad"),
      BoothModel(location: "haryana/chandigargh"),
      BoothModel(location: "haryana/badshahpur")
    ];

    ElectionModel electionModel = ElectionModel(
      electionId: electionId,
      electionName: electionName.text,
      electionType: electionType.value,
      electionState: state,
      electionDate: date.value,
      electionStartingTime: startTime.value,
      electionEndingTime: endTime.value,
      booths: booths,
    );

    List<Map<String, dynamic>> cadidateMapList =
        candidateModeList.map((e) => e.toJson()).toList();

    Map<String, dynamic> electionDetails = {
      "election_data": electionModel.toJson(),
      "candidate_data": cadidateMapList,
    };

    await CreateElectionFuntions.createElectionFunctions(electionDetails);
  }

  List<String> subAreaList = [
    "Gurgaon",
    "Faridabad",
    "Badshahpur",
    "Chandigarh",
  ];
}
