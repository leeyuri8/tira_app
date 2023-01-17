import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/constants/styles.dart';
import 'package:tira_app/main.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Color.fromRGBO(88, 88, 88, 0.48),
              blurStyle: BlurStyle.outer)
        ],
        color: white,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'قسم الجباية و الضرائب',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_sharp,
                      color: mainColor,
                    ),
                    Text(
                      ':الموظف المسؤول',
                      style: TextStyle(color: secondColor, fontSize: 20.sp),
                    ),
                    Text('جابر عمر')
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.call, color: mainColor),
                    Text('0595455959'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: mainColor,
                    ),
                    Text('youadmin@host.as')
                  ],
                )
              ],
            ),
            GestureDetector(child: Image.asset('assets/images/call.png'))
          ]),
    );
  }
}
