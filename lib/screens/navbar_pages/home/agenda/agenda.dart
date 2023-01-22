import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/agenda/agenda_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          AppBarr(
            title: 'الأجندة الحكومية',
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
            widget: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
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
                      'الإجازات الرسمية',
                      'مناسبات وطنية',
                      'الأعياد و الأحداث '
                    ],
                    fontSize: 18.sp,
                    activeFgColor: white,
                    inactiveFgColor: mainColor,
                    onToggle: (index) {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 15,
                    itemBuilder: (context, index) => AgendaCard(),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
