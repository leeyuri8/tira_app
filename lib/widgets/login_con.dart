import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/core/strings_manager.dart';
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
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: AppStrings.phoneNum,
              hintStyle: TextStyle(fontSize: FontSize.s16, color: secondColor),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: AppStrings.passHint,
                hintStyle:
                    TextStyle(fontSize: FontSize.s16, color: secondColor),
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.5.h, right: 120),
            child: Text(
              AppStrings.forgetPass,
              style: TextStyle(fontSize: FontSize.s14, color: secondColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: AuthButton(
                onTap: () {
                  Get.toNamed(AppRoutes.check1);
                },
                buttonText: AppStrings.loginButton),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
            child: Text(AppStrings.or),
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
