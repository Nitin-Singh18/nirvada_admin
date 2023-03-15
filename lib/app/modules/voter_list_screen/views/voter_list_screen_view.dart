import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';
import '../controllers/voter_list_screen_controller.dart';
import 'package:getwidget/getwidget.dart';

class VoterListScreenView extends GetView<VoterListScreenController> {
  const VoterListScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: XText(
          text: "Voters List",
          fontWeight: FontWeight.bold,
          size: 32.sp,
        ),
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Nirvada.png"),
            ),
          ),
          child: XText(
            text: "Be a responsible citizen",
            fontWeight: FontWeight.bold,
            size: 16.sp,
          ),
        ),
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 171.h,
                      width: 623.w,
                      child: Row(
                        children: [
                          GFAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/image 3.png"),
                              shape: GFAvatarShape.standard,
                              radius: 12.r,
                              ),
                          XText(
                            text: "Narendra D. Modi",
                            fontWeight: FontWeight.bold,
                            size: 26.sp,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          XText(
                            text: "Voter ID : 12421786",
                            fontWeight: FontWeight.bold,
                            size: 18.sp,
                          ),
                          XText(
                            text: "Phone Number : 9650337278",
                            fontWeight: FontWeight.bold,
                            size: 18.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 171.h,
                      width: 623.w,
                      child: Row(
                        children: [
                          GFAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/image 3.png"),
                              shape: GFAvatarShape.standard,
                              radius: 12.r,
                              ),
                              
                          XText(
                            text: "Narendra D. Modi",
                            fontWeight: FontWeight.bold,
                            size: 26.sp,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          XText(
                            text: "Voter ID : 12421786",
                            fontWeight: FontWeight.bold,
                            size: 18.sp,
                          ),
                          XText(
                            text: "Phone Number : 9650337278",
                            fontWeight: FontWeight.bold,
                            size: 18.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
