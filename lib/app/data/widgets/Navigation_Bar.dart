import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nirvada_admin/app/data/widgets/xText.dart';

class WebBar extends StatelessWidget {
  const WebBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.h,
      width: 1728.w,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Nirvada.png"),),),
            child:XText(
              text: "Be a responsible citizen",
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              size: 20,
            ) ,
          ),
          Container(
            alignment: Alignment.center,
            child: XText(
                text: "Voters List",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                size: 20,
              ),
          ) ,
        ],
      ),
    );
  }
}