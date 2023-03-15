import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/home_tile.dart';

import '../../../data/widgets/xText.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 32.sp, fontWeight: FontWeight.w600),
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
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                    XText(
                      text: "Control Center",
                      size: 32.sp,
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
              padding: EdgeInsets.symmetric(horizontal: 36.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  XText(
                    text: "Get Started",
                    size: 44.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                      height: 200.h,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 26.h,
                            crossAxisSpacing: 26.w,
                            childAspectRatio: 3.5),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return HomeTile();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  XText(
                    text: "Manage Current Election",
                    size: 44.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                      height: 420.h,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 26.h,
                            crossAxisSpacing: 26.w,
                            childAspectRatio: 3.5),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return HomeTile();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
