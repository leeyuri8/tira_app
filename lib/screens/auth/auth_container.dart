import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AuthContainer extends StatelessWidget {
  double height;
  Column column;

  AuthContainer({required this.height, required this.column, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 15.r,
              offset: Offset(0, 5), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(48.r),
        ),
        child: Padding(
            padding: EdgeInsets.only(
                left: 33.h, top: 70.h, right: 33.w, bottom: 40.h),
            child: column));
  }
}
