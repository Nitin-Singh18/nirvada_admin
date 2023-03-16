import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'N',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'r',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'i',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'v',
                    style: TextStyle(color: Color(0xff06038D)),
                  ),
                  TextSpan(
                    text: 'ā',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                  TextSpan(
                    text: 'd',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                  TextSpan(
                    text: 'a\n',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                  TextSpan(
                    text: 'Be a responsible citizen',
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            XText(
              text: "Vidhan Sabha",
              size: 32.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: 150.w,
            ),
          ]),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(color: Color(0x33000000), width: 2.w))),
    );
  }
}
