import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/forms/form_details.dart';

import '../../myorders/order_details.dart';

class FormsCard extends StatelessWidget {
  const FormsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5),
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
        padding: EdgeInsets.fromLTRB(17.w, 12.2.h, 19.w, 8.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'فتح باب التسجيل للتطوع في المجال الزراعي',
                  style: TextStyle(
                      fontSize: FontSize.s18,
                      fontWeight: FontWeightManager.semiBold),
                ),
                Image.asset('assets/images/meen.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'قبل 5 دقائق ',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: FontSize.s18,
                  ),
                ),
              ],
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد',
              maxLines: 2,
              style: TextStyle(
                color: HexColor('#757575'),
                fontSize: FontSize.s18,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => FormDetails());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تقدم الآن',
                      style: TextStyle(color: mainColor, fontSize: 20.sp),
                    ),
                    Icon(
                      Icons.add,
                      color: mainColor,
                    )
                  ],
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
