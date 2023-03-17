import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




Widget AppName(){
  return  RichText(
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
                    );
}