import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      AppBarr(
        title: 'إتصال بالموكيد',
        actions: GestureDetector(
          child: Icon(Icons.arrow_forward),
          onTap: () => Get.back(),
        ),
        leading: SizedBox(),
      ),
      ContainerBody(
          widget: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 250.w,
                height: 55.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: mainColor,
                    boxShadow: [BoxShadow(color: mainColor, blurRadius: 10.r)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/phone.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'إتصال بالموكيد',
                      style: TextStyle(fontSize: 22.sp, color: white),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: mainColor,
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Text(
                'التقارير \n الرجاء تحديد نوع التقرير',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(reportsCard.length,
                  (index) => CallCard(repostsCard: reportsCard[index])),
            )
          ],
        ),
      ))
    ]));
  }
}
