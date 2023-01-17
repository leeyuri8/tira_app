import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/constants/colors.dart';

class ContainerBody extends StatelessWidget {
  Widget widget;

  ContainerBody({required this.widget, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Container(
          width: 428.w,
          height: 800.h,
          decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r))),
          child: widget),
    );
  }
}
