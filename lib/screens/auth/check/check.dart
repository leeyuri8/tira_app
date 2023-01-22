import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/screens/auth/check/check1.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/screens/auth/auth_container.dart';
import 'package:tira_app/widgets/topBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return TopBar(
        widget: AuthContainer(
            height: 452.h,
            column: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 76.0.h),
                  child: Text(
                    'أدخل رمز الهاتف لإرسال رمز التحقق',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'رقم الهاتف'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35.0.h),
                  child: AuthButton(
                    buttonText: ' إرسال',
                    onTap: () {
                      Get.toNamed(AppRoutes.check2);
                    },
                  ),
                ),
              ],
            )));
  }
}
