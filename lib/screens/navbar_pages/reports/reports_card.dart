import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';

class ReportsCard extends StatelessWidget {
  const ReportsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376.w,
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(88, 88, 88, 4.3),
                blurRadius: 10.r,
                offset: Offset(0, 0)),
          ],
          color: white),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'نوع  التقرير:',
                        style: TextStyle(
                            color: mainColor,
                            fontFamily: 'Hanimation',
                            fontSize: 18.sp),
                        children: [
                      TextSpan(
                        text: ' الأمن و السلامة -  عنف الحيوانات',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Hanimation',
                            fontSize: 18.sp),
                      ),
                    ])),
                Image.asset('assets/images/meen.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/attach.png'),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'المرفقات:  2',
                  style: TextStyle(color: mainColor, fontSize: 18.sp),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => PollsDetails());
                },
                child: Text(
                  'عرض تفاصيل التقرير',
                  style: TextStyle(color: mainColor, fontSize: 14.sp),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(131.w, 31.h),
                    backgroundColor: white,
                    side: BorderSide(color: mainColor, width: 1.6.w)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/num.png'),
                Text('رقم التقرير: 5'),
                Image.asset('assets/images/clock.png'),
                Text('حالة التقرير: مكتمل'),
                Image.asset('assets/images/date.png'),
                Text('تاريخ التقديم: 3-8-2022'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
