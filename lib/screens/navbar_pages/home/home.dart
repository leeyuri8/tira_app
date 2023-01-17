import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call.dart';
import 'package:tira_app/screens/navbar_pages/myorders/my_orders.dart';
import 'package:tira_app/screens/navbar_pages/notification/notifications.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/divider_widget.dart';
import 'package:tira_app/screens/navbar_pages/home/main_card.dart';
import 'package:tira_app/widgets/call_container.dart';

import '../../../widgets/navbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarController controller = Get.put(NavBarController());

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
                height: 250.h,
                decoration: BoxDecoration(color: mainColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 91.h,
                      width: 91.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                              color: Color.fromARGB(121, 236, 179, 179),
                              width: 5)),
                      child: SizedBox(
                        height: 83.h,
                        width: 83.w,
                        child: Image.asset(
                          'assets/images/peerson.png',
                        ),
                      ),
                    ),
                    Text(
                      'عبد الرحمن محمد الطيراوي',
                      style: TextStyle(
                          color: white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: white,
                            fixedSize: Size(166.w, 35.h)),
                        onPressed: () {},
                        child: Text(
                          'الملف الشخصي',
                          style: TextStyle(color: mainColor, fontSize: 16.sp),
                        ))
                  ],
                )),
            DividerWidget(image: 'assets/images/dollar.png', title: 'العطاءات'),
            DividerWidget(
                image: 'assets/images/store.png', title: 'المحلات التجارية'),
            DividerWidget(
                image: 'assets/images/support.png', title: 'الدعم الفني'),
            DividerWidget(
                image: 'assets/images/key.png', title: 'تغيير كلمة المرور'),
            DividerWidget(
                image: 'assets/images/privacy.png', title: 'سياسة الخصوصية'),
            DividerWidget(
                image: 'assets/images/setting.png', title: 'الإعدادات'),
            Padding(
              padding: const EdgeInsets.all(30),
              child: AuthButton(onTap: () {}, buttonText: 'تسجيل الخروج'),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffECECEC),
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              left: 18,
            ),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
        title: Center(
            child: Text(
          'بلدة الطيرة',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
        // leading: const Padding(
        //   padding: EdgeInsets.only(right: 10),
        //   child: Icon(Icons.menu),
        // ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: mainColor,
          child: Container(
            decoration: BoxDecoration(
                color: HexColor('#ECECEC'),
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(220.r))),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => CallScreen());
                    },
                    child: CallContainer()),
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h, left: 30.w, right: 30.w),
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.h,
                      crossAxisSpacing: 10.w,
                      children: List.generate(categories.length, (index) {
                        return GestureDetector(
                          onTap: () {},
                          child: MainCard(
                            category: categories[index],
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
