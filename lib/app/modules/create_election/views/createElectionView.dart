import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/AppName.dart';
import 'package:nirvada_admin/app/data/widgets/cButton.dart';
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
                    TextButton(
                        onPressed: () {
                          controller.onCandidateList(context, 5);
                        },
                        child: XText(
                          size: 20.sp,
                          text: "Candidate List",
                          color: Color(0xFF06038D),
                          fontWeight: FontWeight.w600,
                        ))
                  ]),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0x33000000),
                    width: 2.w,
                  ),
                ),
              ),
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
                      controller: controller.electionName,
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    DropdownButtonFormField(
                      value: "Select Election Type",
                      items: [
                        DropdownMenuItem(
                          child: XText(
                            text: "Select Election Type",
                            size: 14.sp,
                          ),
                          value: "Select Election Type",
                        ),
                        DropdownMenuItem(
                          child: XText(
                            text: "State",
                            size: 14.sp,
                          ),
                          value: "State",
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    DropdownButtonFormField(
                      value: "Select Area",
                      items: [
                        DropdownMenuItem(
                          child: XText(
                            text: "Select Area",
                            size: 14.sp,
                          ),
                          value: "Select Area",
                        ),
                        DropdownMenuItem(
                          child: XText(
                            text: "Haryana",
                            size: 14.sp,
                          ),
                          value: "Haryana",
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    XText(
                      text: "SubArea in ${controller.state}",
                      size: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Container(
                      width: 440.w,
                      height: 200.h,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListView.builder(
                            itemCount: controller.subAreaList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 12.h),
                                child: ListTile(
                                  title: XText(
                                    text: controller.subAreaList[index],
                                    size: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  trailing: TextButton(
                                    onPressed: () {
                                      controller.onAddCandidate(
                                          "haryana/${controller.subAreaList[index]}",
                                          context);
                                    },
                                    child: XText(
                                      size: 14.sp,
                                      text: "Add Candidate",
                                      color: Color(0xFF06038D),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xff06038D).withOpacity(0.1),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Obx(
                      () => DateTimeTile(
                        title: controller.date.value,
                        onTap: () => controller.onChangeElectionDate(context),
                        iconData: Icons.calendar_month_rounded,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Obx(
                      () => DateTimeTile(
                        title: controller.startTime.value,
                        onTap: () => controller.onChangeStartTime(context),
                        iconData: Icons.timer,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Obx(() => DateTimeTile(
                          title: controller.endTime.value,
                          onTap: () => controller.onChangeEndTime(context),
                          iconData: Icons.timer,
                        )),
                    SizedBox(height: 24.h),
                    CButton(
                      title: "Create Election",
                      onTap: () {
                        controller.onCreateElection();
                      },
                      width: 440.w,
                      height: 70.h,
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

  Widget DateTimeTile({
    required String title,
    required onTap,
    required IconData iconData,
  }) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Color(0xff1b1b1b),
      ),
      tileColor: Color(0x4DD9D9D9),
      title: XText(
        text: title,
        size: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      onTap: onTap,
    );
  }
}
