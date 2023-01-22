import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/screens/auth/auth_container.dart';
import 'package:tira_app/widgets/topBar.dart';

class Check2 extends StatelessWidget {
  const Check2({super.key});

  @override
  Widget build(BuildContext context) {
    return TopBar(
        widget: AuthContainer(
      height: 452.h,
      column: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0.h),
            child: Text(
              'أدخل رمز التحقق المرسل الى رقم الهاتف',
              style: TextStyle(fontSize: FontSize.s18),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Pinput(
                length: 5,
              )),
          Padding(
            padding: EdgeInsets.only(top: 35.0.h),
            child: AuthButton(
              buttonText: 'تحقق',
              onTap: () {
                Get.offNamed(AppRoutes.home);
              },
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(top: 35.0.h),
              child: Text(
                'لم يصلك رمز التحقق؟ أعادة الإرسال',
                style: TextStyle(fontSize: FontSize.s18, color: mainColor),
              ),
            ),
            onTap: () {
              print('RRRR');
            },
          ),
        ],
      ),
    ));
  }
}
