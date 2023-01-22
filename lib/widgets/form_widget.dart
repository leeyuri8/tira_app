import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';

class FormWidget extends StatelessWidget {
  int? lines = 1;
  String label;
  String hint;
  Icon? icon;
  double? height = 50.0;

  FormWidget({
    this.lines,
    required this.label,
    required this.hint,
    this.icon,
    this.height,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    lines == 3 || lines == 4 ? height : height = 62.h;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18.sp, color: HexColor('#757575')),
        ),
        SizedBox(
          height: height,
          child: TextField(
            maxLines: lines,
            decoration: InputDecoration(
                fillColor: white,
                hintText: hint,
                filled: true,
                isDense: true,
                suffixIcon: icon,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16.sp),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: mainColor, width: 1.w)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: mainColor, width: 1.w))),
          ),
        )
      ],
    );
  }
}
