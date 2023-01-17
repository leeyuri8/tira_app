import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/widgets/button.dart';

import '../screens/auth/check/check.dart';

class LoginCon extends StatelessWidget {
  const LoginCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 8),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(hintText: 'رقم الهاتف / الهوية الشخصية'),
              )),
          const Padding(
              padding: EdgeInsets.only(top: 8),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'كلمة المرور',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              )),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 120),
            child: Text('هل نسيت كلمة المرور؟'),
          ),
          SizedBox(
            height: 10.h,
          ),
          AuthButton(
              onTap: () {
                Get.toNamed(AppRoutes.check1);
              },
              buttonText: 'تسجيل الدخول'),
          const Padding(
            padding: EdgeInsets.only(top: 7.0),
            child: Text('أو'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              Image.asset('assets/images/facebook.png')
            ],
          )
        ],
      ),
    );
  }
}
