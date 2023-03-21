import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/AppName.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

import '../../../data/widgets/home_tile.dart';
import '../controllers/election_screen_controller.dart';

class ElectionScreenView extends GetView<ElectionScreenController> {
  const ElectionScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppName(),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0.w, vertical: 20.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Election will be live on\n",
                          style: TextStyle(
                            fontSize: 20.sp,
                          )),
                      TextSpan(
                          text: "18 Mar, 2023",
                          style: TextStyle(
                              fontSize: 44.sp, fontWeight: FontWeight.w600))
                    ])),
                    Container(
                      width: 280.w,
                      height: 70.h,
                      alignment: Alignment.center,
                      child: XText(
                        text: "Declare Result",
                        color: Colors.white,
                        size: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff898989),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ]),
            )
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              XText(
                text: "Actions",
                size: 30.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SizedBox(
                  height: 200.h,
                  child: Row(
                    children: [
                      HomeTile(
                        title: "Send Alert Message",
                        subtitle:
                            "Send a SMS to alert the voters for upcoming election",
                        tileColor: Color(0xffFF671F),
                        onTap: () {
                          controller.onSendAlertMessage();
                        },
                      ),
                      HomeTile(
                        title: "Send Login Details",
                        subtitle:
                            "Send a SMS to alert the voters for upcoming election",
                        tileColor: Color(0xffFF671F),
                        onTap: () {
                          controller.onSendLoginCrendentials();
                        },
                      ),
                      HomeTile(
                        title: "Send Election Updates",
                        subtitle:
                            "Send a SMS to alert the voters for upcoming election",
                        tileColor: Color(0xffFF671F),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 66.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        XText(
                          text: "Election Status",
                          size: 38.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        DropdownButton(
                            style: TextStyle(fontSize: 40.sp),
                            value: controller.dropDownValue,
                            items: controller.item,
                            onChanged: (value) {
                              controller.dropDownValue = value;
                            }),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
