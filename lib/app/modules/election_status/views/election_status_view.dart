import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/election_status_controller.dart';

class ElectionStatusView extends GetView<ElectionStatusController> {
  const ElectionStatusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 32.sp, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: 'Nir',
                          style: TextStyle(color: Color(0xffFF671F)),
                        ),
                        TextSpan(
                          text: 'v',
                          style: TextStyle(color: Color(0xff06038D)),
                        ),
                        TextSpan(
                          text: 'āda\n',
                          style: TextStyle(color: Color(0xff046A38)),
                        ),
                        TextSpan(
                          text: 'Be a responsible citizen',
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22.h,
                        width: 22.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      XText(
                        text: "Vidhan Sabha",
                        size: 32.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22.h,
                        width: 22.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      XText(
                        text: "Election is live",
                        size: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ]),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(color: Color(0x33000000), width: 2.w))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0.w, vertical: 20.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                            text: "Total Votes  -  ",
                            style: TextStyle(
                              fontSize: 32.sp,
                            )),
                        TextSpan(
                            text: "23,456",
                            style: TextStyle(
                              fontSize: 44.sp,
                            ))
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
          ),
          Center(
            child: XText(
              text: "//Bar Graph",
              size: 40.sp,
            ),
          )
        ],
      ),
    );
  }
}
