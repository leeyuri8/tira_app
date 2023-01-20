import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class DividerWidget extends StatelessWidget {
  String image;
  String title;
  VoidCallback onPressed;

  DividerWidget(
      {required this.image,
      required this.title,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: ListTile(
            leading: Image.asset(image),
            title: Text(
              title,
              style: TextStyle(fontSize: 20.sp),
            ),
          ),
        ),
        Divider(
          thickness: 1,
          height: 0,
          color: background,
          indent: 15,
          endIndent: 15,
        ),
      ],
    );
  }
}
