import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/constants/colors.dart';

class CallContainer extends StatelessWidget {
  const CallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          width: 232.w,
          height: 232.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#CBCBCB'),
              boxShadow: [
                BoxShadow(
                  color: HexColor('#D9583B'),
                  blurRadius: 15,
                )
              ]),
          child: Container(
            margin: EdgeInsets.all(16.h),
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
                border: Border.all(
                    color: white,
                    width: 0.75,
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
                      blurRadius: 1.5,
                      offset: Offset(0, 2),
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
                    width: 45,
                    height: 45,
                  ),
                  Text(
                    'إتصال بالموكيد',
                    style: TextStyle(
                        fontSize: 18,
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
