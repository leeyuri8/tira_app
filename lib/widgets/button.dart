import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/styles.dart';

class AuthButton extends StatelessWidget {
  VoidCallback onTap;
  String buttonText;

  AuthButton({
    required this.onTap,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 250.w,
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r), color: mainColor),
          child: Center(
            child: Text(
              '$buttonText',
              style: TextStyle(fontSize: 18.sp, color: white),
            ),
          ),
        ));
  }
}
