import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/services/services_details_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ServicesDetails extends StatelessWidget {
  const ServicesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarr(
            title: "الصحة والتعليم",
            actions: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Get.back(),
            ),
            leading: SizedBox(
              width: 2,
            ),
          ),
          ContainerBody(
              widget: Container(
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                      'الخدمات الحالية',
                      'الخدمات المعلقة',
                      'الخدمات المكتملة'
                    ],
                    fontSize: 16.sp,
                    activeFgColor: white,
                    inactiveFgColor: mainColor,
                    onToggle: (index) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ServicesDetailsCard();
                      },
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
