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
import 'package:tira_app/widgets/upload_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarr(
            title: 'الشكاوى',
            actions: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Get.back(),
            ),
            leading: SizedBox(),
          ),
          ContainerBody(
              widget: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  ToggleSwitch(
                    minHeight: 45.h,
                    minWidth: 135.w,
                    radiusStyle: true,
                    totalSwitches: 3,
                    cornerRadius: 25.r,
                    activeBgColor: [mainColor],
                    inactiveBgColor: white,
                    borderColor: [mainColor],
                    borderWidth: 0.5.w,
                    initialLabelIndex: 0,
                    labels: const [
                      'شكوى عاجلة',
                      'تقرير عن مشكلة',
                      'اقتراح جديد '
                    ],
                    fontSize: 18.sp,
                    activeFgColor: white,
                    inactiveFgColor: mainColor,
                    onToggle: (index) {},
                  ),
                  FormWidget(label: 'عنوان الشكوى', hint: 'عنوان الشكوى'),
                  FormWidget(
                    label: 'تفاصيل الشكوى',
                    hint: '',
                    lines: 4,
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  UploadWidget(
                      label: 'المرفقات',
                      image: 'assets/images/upload.png',
                      imageLabel: 'قم بإرفاق تقارير أو صور توضح الشكوى'),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: AuthButton(
                      onTap: () {},
                      buttonText: 'إرسال',
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
