import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/voter_user_mode.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';
import '../../../data/widgets/home_tile.dart';
import '../controllers/voter_list_screen_controller.dart';
import 'package:getwidget/getwidget.dart';

class VoterListScreenView extends GetView<VoterListScreenController> {
  const VoterListScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    style:
                        TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
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
                  text: "Voters Lists",
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
                  bottom: BorderSide(color: Color(0x33000000), width: 2.w))),
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 300.0.w),
            child: GetBuilder<VoterListScreenController>(builder: (controller) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 26.h,
                    crossAxisSpacing: 26.w,
                    childAspectRatio: 5),
                itemCount: controller.model.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.r),
                    child: ListTile(
                      title: XText(
                        text:
                            "Voter ID :${controller.model[index].voterIdNumber}",
                        size: 20.sp,
                        fontWeight: FontWeight.w600,
                        isLight: true,
                      ),
                      subtitle: XText(
                        text:
                            "Phone Number : ${controller.model[index].voterIdNumber}",
                        size: 16.sp,
                        isLight: true,
                      ),
                    ),
                  );
                  // return Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  //     child: Container(
                  //       height: 110.h,
                  //       width: 400.w,
                  //       alignment: Alignment.center,
                  //       child: Row(
                  //         children: [
                  //           // Container(
                  //           //   padding: EdgeInsets.symmetric(
                  //           //       vertical: 10.h, horizontal: 10),
                  //           //   child: Image.asset(
                  //           //     "assets/images/image3.png",
                  //           //   ),
                  //           //   decoration: BoxDecoration(
                  //           //     borderRadius: BorderRadius.circular(12.r),
                  //           //   ),
                  //           // ),
                  //           Padding(
                  //             padding: EdgeInsets.only(top: 10.0.h),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 // XText(
                  //                 //   text: "Narendra D. Modi",
                  //                 //   size: 26.sp,
                  //                 //   fontWeight: FontWeight.w600,
                  //                 // ),
                  //                 XText(
                  //                   text:
                  //                       "Voter ID :${controller.model[index].voterIdNumber}",
                  //                   size: 18.sp,
                  //                   isLight: true,
                  //                 ),
                  //                 XText(
                  //                   text:
                  //                       "Phone Number : ${controller.model[index].voterIdNumber}",
                  //                   size: 18.sp,
                  //                   isLight: true,
                  //                 ),
                  //               ],
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(6.r),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Color(0x40000000),
                  //               blurRadius: 1,
                  //               spreadRadius: 0,
                  //               offset: Offset(0, 4),
                  //             ),
                  //             BoxShadow(
                  //               color: Color(0x40000000),
                  //               blurRadius: 2,
                  //               spreadRadius: 0,
                  //               offset: Offset(0, -2),
                  //             )
                  //           ]),
                  //     ));
                },
              );
            }),
          ),
        )
      ]),
    );
  }
}
