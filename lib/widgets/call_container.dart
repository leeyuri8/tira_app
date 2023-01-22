import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';

class CallContainer extends StatelessWidget {
  const CallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 39.6.h),
        child: Container(
          width: 232.51.w,
          height: 232.51.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#CBCBCB'),
              boxShadow: [
                BoxShadow(
                  color: HexColor('#D9583B'),
                  blurRadius: 15.r,
                )
              ]),
          child: Container(
            margin: EdgeInsets.all(16.h),
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
                border: Border.all(
                    color: white,
                    width: 0.75.w,
                    strokeAlign: StrokeAlign.center,
                    style: BorderStyle.solid),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    HexColor('#DBE2E8'),
                    HexColor('#EEF1F4'),
                    HexColor('#FAFBFC'),
                    HexColor('#FFFFFF'),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1.5.r,
                      offset: Offset(0, 2.h),
                      blurStyle: BlurStyle.outer),
                ]),
            child: Container(
              // height: 115.h,
              // width: 115.w,
              decoration: BoxDecoration(
                  color: mainColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/rr.png'),
                      alignment: Alignment.topCenter,
                      opacity: 0.6)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/phone.png',
                    width: 79.h,
                    height: 79.w,
                  ),
                  Text(
                    'إتصال بالموكيد',
                    style: TextStyle(
                        fontSize: FontSize.s22,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
