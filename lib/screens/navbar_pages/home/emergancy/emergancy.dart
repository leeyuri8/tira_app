import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/home/emergancy/emeregancy_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';

class Emergancy extends StatelessWidget {
  const Emergancy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      AppBarr(
        title: 'الإنذار و الطوارئ',
        actions: GestureDetector(
          child: Icon(Icons.arrow_forward),
          onTap: () => Get.back(),
        ),
        leading: SizedBox(),
      ),
      ContainerBody(
          widget: Container(
        margin: EdgeInsets.only(top: 60.h, left: 10, right: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    cards.length,
                    (index) => EmergancyCards(emergancyCard: cards[index]),
                  )),
              Container(
                width: 250.w,
                height: 50.h,
                margin: EdgeInsets.only(top: 90.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: mainColor,
                    boxShadow: [BoxShadow(color: mainColor, blurRadius: 10.r)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/position.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'قم بإيجادي',
                      style: TextStyle(fontSize: 22.sp, color: white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ))
    ]));
  }
}
