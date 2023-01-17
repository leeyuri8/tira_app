import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tira_app/constants/colors.dart';
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
            widget: Padding(
              padding: const EdgeInsets.all(15),
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
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 391.h,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            child: Column(children: [
                              Text(
                                'فلتر التقارير',
                                style: TextStyle(
                                    color: mainColor, fontSize: 20.sp),
                              ),
                              Divider(
                                color: secondColor,
                                thickness: 0.5,
                              ),
                              ReportRow(
                                  image: 'assets/images/type.png',
                                  title: 'نوع التقرير'),
                              Divider(
                                color: secondColor,
                                thickness: 0.1,
                              ),
                              ReportRow(
                                  image: 'assets/images/state.png',
                                  title: 'حالة التقرير'),
                              Divider(
                                color: secondColor,
                                thickness: 0.1,
                              ),
                              ReportRow(
                                  image: 'assets/images/number.png',
                                  title: 'رقم التقرير'),
                              Divider(
                                color: secondColor,
                                thickness: 0.1,
                              ),
                              ReportRow(
                                  image: 'assets/images/datee.png',
                                  title: 'تاريخ التقرير'),
                              Container(
                                margin: EdgeInsets.all(15),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: mainColor,
                                        fixedSize: Size(296.w, 42.h)),
                                    child: Text(
                                      'عرض النتائج',
                                      style: TextStyle(
                                          color: white, fontSize: 16.sp),
                                    )),
                              )
                            ]),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 51.h,
                      width: 368.w,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: white,
                            hintText: ' بحث في التقارير',
                            filled: true,
                            enabled: false,
                            suffixIcon: Image.asset('assets/images/filter.png'),
                            hintStyle: TextStyle(
                              color: HexColor('#FFB1A0'),
                              wordSpacing: 2,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide:
                                    BorderSide(color: mainColor, width: 1.w)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide:
                                    BorderSide(color: mainColor, width: 1.w))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}
