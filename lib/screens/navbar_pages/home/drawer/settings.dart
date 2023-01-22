import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/controllers/settings_controller.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'الإعدادات',
                actions: GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () => Get.back(),
                ),
                leading: SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                margin: EdgeInsets.only(top: 46.h, right: 15.w, left: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اللغة',
                      style: TextStyle(fontSize: 20.sp, color: mainColor),
                    ),
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
                      labels: const ['العربية', 'English', 'עברית '],
                      fontSize: 18.sp,
                      activeFgColor: white,
                      inactiveFgColor: mainColor,
                      onToggle: (index) {},
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'إشعارات التطبيق',
                      style: TextStyle(fontSize: 20.sp, color: mainColor),
                    ),
                    ToggleSwitch(
                      minHeight: 45.h,
                      minWidth: 135.w,
                      radiusStyle: true,
                      totalSwitches: 2,
                      cornerRadius: 25.r,
                      activeBgColor: [mainColor],
                      inactiveBgColor: white,
                      borderColor: [mainColor],
                      borderWidth: 0.5.w,
                      initialLabelIndex: 0,
                      labels: const [
                        'تشغيل',
                        'كتم',
                      ],
                      fontSize: 18.sp,
                      activeFgColor: white,
                      inactiveFgColor: mainColor,
                      onToggle: (index) {},
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'حجم الخط',
                      style: TextStyle(fontSize: 20.sp, color: mainColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Aa',
                          style: TextStyle(fontSize: 20.sp, color: mainColor),
                        ),
                        Obx((() => SizedBox(
                              width: 330.w,
                              child: Slider(
                                  activeColor: black,
                                  inactiveColor: Colors.black45,
                                  value: settingsController.sliderValue.value,
                                  max: 100,
                                  divisions: 5,
                                  onChanged: (double d) {
                                    settingsController.sliderValue.value = d;
                                  }),
                            ))),
                        Text(
                          'Aa',
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: mainColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'تباين الألوان',
                      style: TextStyle(fontSize: 20.sp, color: mainColor),
                    ),
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
                      labels: const ['طبيعي', 'منعكس', 'أحادي اللون '],
                      fontSize: 18.sp,
                      activeFgColor: white,
                      inactiveFgColor: mainColor,
                      onToggle: (index) {},
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 146.h, left: 76.w, right: 76.w),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#FF2815'),
                            shape: StadiumBorder(),
                            fixedSize: Size(276.w, 56.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'حذف الحساب',
                            style: TextStyle(fontSize: 22.sp),
                          )),
                    )
                  ],
                ),
              )),
            ])));
  }
}
