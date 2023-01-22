import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/controllers/auth_controller.dart';
import 'package:tira_app/controllers/home_controller.dart';
import 'package:tira_app/screens/auth/check/check.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/auth_container.dart';
import 'package:tira_app/widgets/login_con.dart';
import 'package:tira_app/widgets/register_con.dart';
import 'package:tira_app/widgets/topBar.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget w = const LoginCon();
    final AuthController c = Get.put(AuthController());

    // c.isLogin.value == true ? w = LoginCon() : RegisterCon();

    return TopBar(
        widget: AuthContainer(
            height: 576.h,
            column: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ToggleSwitch(
                  animate: true,
                  minHeight: 40.h,
                  minWidth: 150.w,
                  // customHeights: [55.h, 60.h],
                  // customWidths: [120.w, 120.w],
                  totalSwitches: 2,
                  cornerRadius: 20.r,
                  activeBgColor: [mainColor],
                  inactiveBgColor: white,
                  borderColor: [Colors.grey],
                  borderWidth: 0.4.w,
                  initialLabelIndex: 0,
                  labels: const ['تسجيل دخول', 'حساب جديد'],
                  fontSize: 16.sp,
                  onToggle: (index) {
                    print(index);

                    if (index == 0) {
                      c.isLogin.value = true;
                      w = LoginCon();
                    }
                    if (index == 1) {
                      c.isLogin.value = false;
                      w = RegisterCon();
                    }
                  },
                ),
                Obx(() {
                  if (c.isLogin.value == true) {
                    return w = LoginCon();
                  } else {
                    return w = RegisterCon();
                  }
                })
              ],
            )));
  }
}
