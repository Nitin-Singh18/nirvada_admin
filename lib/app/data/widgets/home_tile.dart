import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color tileColor;
  final onTap;
  HomeTile({super.key, 
  required this.title, 
  required this.subtitle, 
  required this.tileColor, 
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 110.h,
            width: 440.w,
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  children: [
                    TextSpan(text: "$title\n"),
                    TextSpan(
                      text: subtitle,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ]),
            ),
            decoration: BoxDecoration(
                color: tileColor,
                borderRadius: BorderRadius.circular(12.r)),
          ),
        ));
  }
}
