import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        AppBarr(
          title: 'الملف الشخصي',
          actions: GestureDetector(
            child: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () => Get.back(),
          ),
          leading: SizedBox(),
        ),
        ContainerBody(
            widget: Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                          child: Container(
                        height: 142.h,
                        width: 142.w,
                        child: SizedBox(
                          height: 83.h,
                          width: 83.w,
                          child: Image.asset(
                            'assets/images/peerson.png',
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: mainColor, width: 2)),
                      )),
                      FormWidget(label: 'الاسم الأول', hint: 'الاسم الأول'),
                      FormWidget(label: 'اسم العائلة', hint: 'اسم العائلة'),
                      FormWidget(label: 'تاريخ الميلاد', hint: 'تاريخ الميلاد'),
                      FormWidget(
                          label: 'البريد الإلكتروني',
                          hint: 'البريد الإلكتروني'),
                      FormWidget(label: 'رقم الهاتف', hint: 'رقم الهاتف'),
                      FormWidget(label: 'رقم الهوية', hint: 'رقم الهوية'),
                      FormWidget(label: 'العنوان', hint: 'العنوان'),
                      FormWidget(label: '', hint: 'رقم المبنى'),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 250.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            color: background,
                            border: Border.all(color: mainColor, width: 2.w),
                            boxShadow: [
                              BoxShadow(color: mainColor, blurRadius: 10.r)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/postionw.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'قم بإيجادي',
                              style:
                                  TextStyle(fontSize: 22.sp, color: mainColor),
                            ),
                          ],
                        ),
                      ),
                      AuthButton(onTap: () {}, buttonText: 'تحديث البيانات')
                    ],
                  ),
                )))
      ]),
    ));
  }
}
