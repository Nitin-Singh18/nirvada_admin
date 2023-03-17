import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/AppName.dart';
import 'package:nirvada_admin/app/data/widgets/custom_appbar.dart';
import 'package:nirvada_admin/app/data/widgets/textField.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';
import 'package:nirvada_admin/app/modules/create_election/controllers/createElectionController.dart';

class CreateElectionView extends GetView<CreateElectionController> {
  const CreateElectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppName(),
                    XText(
                      text: "Control Center",
                      size: 36.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                  ]),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom:
                          BorderSide(color: Color(0x33000000), width: 2.w))),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: SizedBox(
                width: 450.w,
                child: Column(
                  children: [
                    CustomTextField(
                      title: "Election Name",
                      hintText: "Enter the name of the election",
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    DropdownButtonFormField(items: [
                      DropdownMenuItem(
                        child: XText(
                          text: "Select Election Type",
                          size: 14.sp,
                        ),
                      )
                    ], onChanged: (value) {}),
                    SizedBox(
                      height: 36.h,
                    ),
                    DropdownButtonFormField(items: [
                      DropdownMenuItem(
                        child: XText(
                          text: "Select Area",
                          size: 14.sp,
                        ),
                      )
                    ], onChanged: (value) {}),
                    SizedBox(
                      height: 36.h,
                    ),
                    XText(
                      text: "Add Booth and Candidate",
                      size: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Container(
                      width: 440.w,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            CustomTextField(
                                title: "Add Booth",
                                hintText: "Enter booth name to add",
                                controller: TextEditingController())
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xff06038D).withOpacity(0.2),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
