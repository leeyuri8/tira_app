import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/home/forms/forms_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Forms extends StatelessWidget {
  const Forms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      AppBarr(
        title: 'الاستمارات',
        actions: GestureDetector(
          child: Icon(Icons.arrow_forward),
          onTap: () => Get.back(),
        ),
        leading: SizedBox(),
      ),
      ContainerBody(
          widget: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
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
