import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/myorders/order_details.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                  'تسجيل المواليد الجدد لشهر سبتمبر',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              style: TextStyle(color: HexColor('#757575'), fontSize: 19.sp),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => OrderDetails());
                },
                child: Text(
                  'عرض تفاصيل الطلب',
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
                Text('رقم الطلب: 5'),
                Image.asset('assets/images/status.png'),
                Text('حالة الطلب: جديد'),
                Image.asset('assets/images/date.png'),
                Text('تاريخ التقديم: 3-8-2022'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
