import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/screens/auth/check/check1.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/auth_container.dart';
import 'package:tira_app/widgets/topBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return TopBar(
        widget: AuthContainer(
            height: 442.h,
            column: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'أدخل رمز الهاتف لإرسال رمز التحقق',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'رقم الهاتف'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
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
