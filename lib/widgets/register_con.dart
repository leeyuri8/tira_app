import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/widgets/button.dart';

import '../screens/auth/check/check.dart';

class RegisterCon extends StatelessWidget {
  const RegisterCon({super.key});

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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'الايميل الالكتروني'),
                
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
            padding: EdgeInsets.only(top: 12, right: 130),
            child: Text('الأحكام والشروط'),
          ),
          SizedBox(
            height: 10.h,
          ),
          AuthButton(
              onTap: () {
                Get.offNamed(AppRoutes.home);
              },
              buttonText: 'تسجيل حساب'),
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
          ),
          
        ],
      ),
    );
  }
}
