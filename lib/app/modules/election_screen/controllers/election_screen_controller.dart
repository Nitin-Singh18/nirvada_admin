import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElectionScreenController extends GetxController {
  List<DropdownMenuItem> item = [
    DropdownMenuItem(
        value: "Election Ongoing", child: Text("Election Ongoing")),
    DropdownMenuItem(value: "Election Ended", child: Text("Election Ended"))
  ];
  String dropDownValue = "Election Ongoing";
}
