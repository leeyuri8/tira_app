import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'تغيير كلمة المرور',
                actions: GestureDetector(
                  child: Icon(Icons.arrow_forward),
                  onTap: () => Get.back(),
                ),
                leading: SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                      margin:
                          EdgeInsets.only(right: 27.w, left: 27.w, top: 145.h),
                      child: Column(children: [
                        FormWidget(
                            label: 'كلمة المرور الحالية ',
                            hint: 'كلمة المرور الحالية '),
                        FormWidget(
                            label: 'كلمة المرور الجديدة ',
                            hint: 'كلمة المرور الجديدة '),
                        FormWidget(
                            label: 'تأكيد كلمة المرور الجديدة ',
                            hint: 'تأكيد كلمة المرور الجديدة '),
                        Padding(
                          padding: EdgeInsets.all(50),
                          child: AuthButton(
                            onTap: () {},
                            buttonText: 'تأكيد',
                          ),
                        )
                      ])))
            ])));
  }
}
