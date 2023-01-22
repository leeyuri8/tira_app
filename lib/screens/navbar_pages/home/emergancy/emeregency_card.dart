import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/emergancy/emergency_details.dart';

class EmergencyCards extends StatelessWidget {
  Caard emergancyCard;

  EmergencyCards({
    required this.emergancyCard,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 120.h,
      width: 376.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white,
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(88, 88, 88, 0.48), blurRadius: 10)
          ]),
      child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          leading: Image.asset(emergancyCard.image),
          title: Text(
            emergancyCard.title,
            style: TextStyle(
              fontSize: 22.sp,
              color: mainColor,
            ),
          ),
          trailing: GestureDetector(
              onTap: emergancyCard.onPressed,
              child: Image.asset(emergancyCard.back))),
    );
  }
}

class Caard {
  final String image;
  final String title;
  final String back;
  VoidCallback? onPressed;

  Caard(this.image, this.title, this.back, this.onPressed);
}

List<Caard> cards = <Caard>[
  Caard('assets/images/fire.png', 'إنذارات الحرائق', 'assets/images/back.png',
      () {
    Get.to(() => EmergencyDetails());
  }),
  Caard('assets/images/tornado.png', 'إنذارات الطقس و الفيضانات',
      'assets/images/back.png', () {
    Get.to(() => EmergencyDetails());
  }),
  Caard('assets/images/amb.png', 'إنذارات صحية', 'assets/images/back.png', () {
    Get.to(() => EmergencyDetails());
  }),
  Caard('assets/images/bo.png', 'إنذارات أمنية', 'assets/images/back.png', () {
    Get.to(() => EmergencyDetails());
  }),
  Caard('assets/images/mapp.png', 'المناطق الآمنة القريبة',
      'assets/images/back.png', () {
    Get.to(() => EmergencyDetails());
  }),
];
