import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/cButton.dart';
import 'package:nirvada_admin/app/data/widgets/textField.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class CreateElectionController extends GetxController {
  TextEditingController candidateNameController = TextEditingController();
  TextEditingController candidatePartyController = TextEditingController();

  String date = "Select Election Date";
  String startTime = "Select Alloted Election Start Time";
  String endTime = "Select Alloted Election End Time";

  void onAddCandidate(context, int itemCount){
   Get.dialog(
      AlertDialog(
        contentPadding: EdgeInsets.all(18.h),
        content: Container(
          height: 400.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XText(
                text: "Add Candidate",
                fontWeight: FontWeight.w600,
                size: 32.sp,
              ),
              SizedBox(height: 32.h,),
              CustomTextField(
                  title: "Candidate Name",
                  hintText: "Enter the name of the candidate",
                  controller: candidateNameController),
                  SizedBox(height: 24.h,),
              CustomTextField(
                  title: "Candidate Party Name",
                  hintText: "Enter the candidate party name",
                  controller: candidateNameController),
              SizedBox(height: 24.h,),
              CButton(
                      title: "Create Election",
                      onTap: () {},
                      width: 440.w,
                      height: 70.h,
                    )
            ],
          ),
        ),
        ));
      
  }
}
