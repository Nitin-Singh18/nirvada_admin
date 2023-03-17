import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final validator;
  final bool? isObsecure;
  final suffixIcon;
  final bool isFillWhite;
  const CustomTextField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.controller,
      this.validator,
      this.isObsecure,
      this.isFillWhite = false,
      this.suffixIcon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          XText(
            text: widget.title,
            fontWeight: FontWeight.w600,
            size: 20.sp,
          ),
          SizedBox(
            height: 4.h,
          ),
          SizedBox(
            height: 54.h,
            width: 440.w,
            child: TextFormField(
              controller: widget.controller,
              validator: widget.validator,
              obscureText: widget.isObsecure ?? false,
              cursorColor: Color(0xff1b1b1b),
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18.sp,
              ),
              decoration: InputDecoration(
                suffixIcon: widget.suffixIcon,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                hintText: widget.hintText,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1b1b1b), width: 2.0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0),
                ),
                hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xB31B1B1B)),
                fillColor: widget.isFillWhite ? Color(0xffFFFFFF) : Color(0x4DD9D9D9),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







