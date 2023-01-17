import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/home/agenda/agenda.dart';
import 'package:tira_app/screens/navbar_pages/home/citizen_service.dart';
import 'package:tira_app/screens/navbar_pages/home/complaints.dart';
import 'package:tira_app/screens/navbar_pages/home/emergancy/emergancy.dart';
import 'package:tira_app/screens/navbar_pages/home/forms/forms.dart';
import 'package:tira_app/screens/navbar_pages/home/news/news.dart';
import 'package:tira_app/screens/navbar_pages/home/polls/polls.dart';
import 'package:tira_app/screens/navbar_pages/home/sections/sections.dart';
import 'package:tira_app/screens/navbar_pages/home/show_ideas.dart';

class MainCard extends StatelessWidget {
  Category category;

  MainCard({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.onPressed,
      child: Container(
        // width: 125.w,
        // height: 125.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 3, offset: Offset(0, 3), color: Colors.grey),
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 80.h, child: Image.asset(category.image)),
          SizedBox(
              height: 35.h,
              child: Text(category.title,
                  style: TextStyle(color: mainColor, fontSize: 20.sp)))
        ]),
      ),
    );
  }
}

class Category {
  final String image;
  final String title;
  VoidCallback? onPressed;
  Category(this.image, this.title, this.onPressed);
}

List<Category> categories = <Category>[
  Category('assets/images/news.png', 'الأخبار', () {
    Get.to(() => NewsScreen());
  }),
  Category('assets/images/video.png', 'الاستمارات', () {
    Get.to(() => Forms());
  }),
  Category('assets/images/polls.png', 'الاستطلاعات', () {
    Get.to(() => Polls());
  }),
  Category('assets/images/sections.png', 'الأقسام', () {
    Get.to(() => Sections());
  }),
  Category('assets/images/fff.png', 'الشكاوي', () {
    Get.to(() => Complaints());
  }),
  Category('assets/images/car.png', 'خدمة المواطن', () {
    Get.to(() => CitizenService());
  }),
  Category('assets/images/calender.png', 'الأجندة الحكومية', () {
    Get.to(() => Agenda());
  }),
  Category('assets/images/warning-calendar.png', 'الإندار والطوارئ', () {
    Get.to(() => Emergancy());
  }),
  Category('assets/images/qqq.png', 'إعرض أفكارك', () {
    Get.to(() => ShowIdeas());
  }),
];
