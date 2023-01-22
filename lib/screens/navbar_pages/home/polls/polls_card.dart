import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/polls/polls_details.dart';

class PollsCard extends StatelessWidget {
  const PollsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(88, 88, 88, 4.3),
                blurRadius: 10.r,
                offset: Offset(0, 0))
          ],
          color: white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إقامة مهرجان ثقافي لدعم ذوي الاحتياجات الخاصة',
                  style: TextStyle(
                      fontSize: FontSize.s18,
                      fontWeight: FontWeightManager.medium),
                ),
                Image.asset('assets/images/meen.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month_outlined),
                Text(
                  'قبل 5 دقائق ',
                  style: TextStyle(color: mainColor, fontSize: 18.sp),
                ),
              ],
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد ',
              maxLines: 2,
              style:
                  TextStyle(color: HexColor('#757575'), fontSize: FontSize.s16),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => PollsDetails());
                },
                child: Text(
                  'قم بالاستطلاع',
                  style: TextStyle(color: mainColor, fontSize: FontSize.s14),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(131.w, 31.h),
                    backgroundColor: white,
                    
                    side: BorderSide(color: mainColor, width: 1.5.w)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/num.png'),
                Text('رقم الاستطلاع: 5'),
                Image.asset('assets/images/clock.png'),
                Text('وقت النشر: 2:30م'),
                Image.asset('assets/images/date.png'),
                Text('تاريخ الانتهاء: 3-8-2022'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
