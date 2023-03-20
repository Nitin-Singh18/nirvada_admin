import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/models/election_model.dart';
import 'package:nirvada_admin/app/data/widgets/AppName.dart';
import 'package:nirvada_admin/app/data/widgets/home_tile.dart';
import 'package:nirvada_admin/app/routes/app_pages.dart';

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
                    AppName(),
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
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SizedBox(
                        height: 200.h,
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 26.h,
                                  crossAxisSpacing: 26.w,
                                  childAspectRatio: 3.5),
                          children: [
                            HomeTile(
                                title: "Create Election",
                                subtitle: "Create a new Election",
                                tileColor: Color(0xffFF671F),
                                onTap: () {
                                  Get.toNamed(Routes.CREATE_ELECTION);
                                }),
                            HomeTile(
                                title: "Voters List",
                                subtitle: "All the listed voters details",
                                tileColor: Color(0xff06038D),
                                onTap: () {
                                  Get.toNamed(Routes.VOTER_LIST_SCREEN);
                                }),
                            HomeTile(
                                title: "Upcoming Election",
                                subtitle: "List of all upcoming elections",
                                tileColor: Color(0xff046A38),
                                onTap: () {})
                          ],
                        )),
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
                      child: GetBuilder<HomeController>(builder: (controller) {
                        return GridView.builder(
                          itemCount: controller.model.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 26.h,
                                  crossAxisSpacing: 26.w,
                                  childAspectRatio: 3.5),
                          itemBuilder: (context, index) {
                            ElectionModel model = controller.model[index];

                            return HomeTile(
                              title: model.electionName,
                              subtitle: model.electionState,
                              tileColor: Color(0xffFF671F),
                              onTap: () {},
                            );
                          },
                        );
                      }),
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
