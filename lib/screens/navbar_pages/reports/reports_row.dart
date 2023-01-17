import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportRow extends StatelessWidget {
  String image;
  String title;

  ReportRow({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,

      child: ListTile(
        trailing: Icon(Icons.arrow_forward_ios_sharp),
        title: Text(
          title,
          style: TextStyle(fontSize: 20.sp),
        ),
        leading: Image.asset(
          image,
        ),
      ),
      // child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //   Image.asset(
      //     image,
      //   ),
      //   Text(
      //     title,
      //     style: TextStyle(fontSize: 20.sp),
      //   ),
      //   Icon(Icons.keyboard_double_arrow_left)
      // ]),
    );
  }
}
