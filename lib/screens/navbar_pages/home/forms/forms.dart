import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/forms/forms_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Forms extends StatelessWidget {
  const Forms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      AppBarr(
        title: 'الاستمارات',
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
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              ToggleSwitch(
                minHeight: 40.h,
                minWidth: 132.w,
                radiusStyle: true,
                totalSwitches: 3,
                cornerRadius: 25.r,
                activeBgColor: [mainColor],
                inactiveBgColor: white,
                borderColor: [mainColor],
                borderWidth: 0.5.w,
                initialLabelIndex: 0,
                labels: const [
                  'استمارات جديدة',
                  'استمارات قيد التنفيذ',
                  'استمارات مكتملة'
                ],
                fontSize: 17.sp,
                activeFgColor: white,
                inactiveFgColor: mainColor,
                onToggle: (index) {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return FormsCard();
                  },
                ),
              ),
            ]),
          ),
        ),
      ))
    ]));
  }
}
