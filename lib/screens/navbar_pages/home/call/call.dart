import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
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
          child: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
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
                      width: 25.w,
                      height: 25.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'إتصال بالموكيد',
                      style: TextStyle(fontSize: FontSize.s22, color: white),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: mainColor,
              height: 1.h,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, right: 15.w),
              child: Text(
                'التقارير \n الرجاء تحديد نوع التقرير',
                style: TextStyle(
                    fontSize: FontSize.s20,
                    fontWeight: FontWeightManager.medium),
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
