import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvada_admin/app/data/models/candidate_model.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class CandidateTile extends StatelessWidget {
  final CandidateModel model;
  const CandidateTile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440.w,
          height: 80.h,
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70.h,
                  width: 60.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/image3.png')),
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    XText(
                      size: 18,
                      fontWeight: FontWeight.bold,
                      text: model.candidateName,
                    ),
                    XText(
                      size: 14,
                      text: model.candidatePartyName,
                      color: Color(0xB31B1B1B),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Image.memory(
                  base64Decode(
                    model.candidatePartySign,
                  ),
                  height: 54.h,
                ),
              ]),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        SizedBox(height: 18.h),
      ],
    );
  }
}
