import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/reports/search_bar.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports_card.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports_row.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controllers/navbar_controller.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
            child: Column(children: [
          AppBarr(
              title: 'تقاريري',
              actions: Icon(Icons.search),
              leading: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.menu),
              )),
          ContainerBody(
            widget: Container(
              margin: EdgeInsets.all(15),
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
                        'جميع التقارير',
                        'تقاريري الجديدة',
                        'تقاريري المكتملة'
                      ],
                      fontSize: 16.sp,
                      activeFgColor: white,
                      inactiveFgColor: mainColor,
                      onToggle: (index) {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SearchBaar(),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ReportsCard();
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ])));
  }
}
