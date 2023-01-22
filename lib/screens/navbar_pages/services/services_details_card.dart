import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/styles.dart';
import 'package:tira_app/screens/navbar_pages/services/details_form.dart';

class ServicesDetailsCard extends StatelessWidget {
  const ServicesDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
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
                  'تسجيل المواليد الجدد لشهر سبتمبر',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/meen.png')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'قبل 5 دقائق ',
                  style: TextStyle(color: mainColor, fontSize: 16.sp),
                ),
              ],
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد ',
              maxLines: 2,
              style: TextStyle(color: HexColor('#757575'), fontSize: 16.sp),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => DetailsForm());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تقدم الآن',
                      style: TextStyle(color: mainColor, fontSize: 14.sp),
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
                    side: BorderSide(color: mainColor, width: 1.5.w)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
