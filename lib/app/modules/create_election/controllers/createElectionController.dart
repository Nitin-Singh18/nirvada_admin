import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/cButton.dart';
import 'package:nirvada_admin/app/data/widgets/candidateTile.dart';
import 'package:nirvada_admin/app/data/widgets/textField.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class CreateElectionController extends GetxController {
  TextEditingController candidateNameController = TextEditingController();
  TextEditingController candidatePartyController = TextEditingController();

  String date = "Select Election Date";
  String startTime = "Select Alloted Election Start Time";
  String endTime = "Select Alloted Election End Time";


  void onCandidateList(context, int itemCount){
    Get.dialog(
      AlertDialog(
        content: Container(
          height: 700.h,
          width: 440.w,
          color: Colors.white,
          child: ListView.builder(itemBuilder: (context, index){
            return CandidateTile();
          }),
        ),
      )
    );
  }

  void onAddCandidate(context, int itemCount){
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
                            Icon(Icons.add_a_photo, color: Color(0xff1b1b1b),),
                            XText(
                              text:"Add party symbol",
                              size: 14.sp,
                            )
                          ],
                        ),
                      )
                      ),
                  ),
                   SizedBox(width: 12.w,),
                    CButton(title: "Add Picture", width: 100.h, height: 100.h, onTap: (){})
                ],
              ),
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
