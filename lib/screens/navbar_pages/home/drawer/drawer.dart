import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/change_pass.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/privacy_policy.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/settings.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/stores/stores.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/technical_support.dart';
import 'package:tira_app/screens/navbar_pages/profile.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/divider_widget.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        
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
                        onPressed: () {
                          Get.to(() => Profile());
                        },
                        child: Text(
                          'الملف الشخصي',
                          style: TextStyle(color: mainColor, fontSize: 16.sp),
                        ))
                  ],
                )),
            DividerWidget(
              image: 'assets/images/dollar.png',
              title: 'العطاءات',
              onPressed: () {
                // Get.to((() => ));
              },
            ),
            DividerWidget(
                image: 'assets/images/store.png',
                title: 'المحلات التجارية',
                onPressed: () {
                  Get.to(() => Stores());
                }),
            DividerWidget(
                image: 'assets/images/support.png',
                title: 'الدعم الفني',
                onPressed: () {
                  Get.to(() => TechnicalSupport());
                }),
            DividerWidget(
                image: 'assets/images/key.png',
                title: 'تغيير كلمة المرور',
                onPressed: () {
                  Get.to(() => ChangePass());
                }),
            DividerWidget(
                image: 'assets/images/privacy.png',
                title: 'سياسة الخصوصية',
                onPressed: () {
                  Get.to(() => PrivacyPolicy());
                }),
            DividerWidget(
                image: 'assets/images/setting.png',
                title: 'الإعدادات',
                onPressed: () {
                  Get.to(() => Settings());
                }),
            Padding(
              padding: const EdgeInsets.all(30),
              child: AuthButton(
                onTap: () {},
                buttonText: 'تسجيل الخروج',
              ),
            )
          ],
        ),
      ),
    );
  }
}
