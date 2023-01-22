import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                  title: 'البحث',
                  actions: GestureDetector(
                    child: Icon(Icons.arrow_forward),
                    onTap: () => Get.back(),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.menu),
                  )),
              ContainerBody(
                  widget: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32.h, left: 30.w, right: 30.w),
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
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide:
                                BorderSide(color: mainColor, width: 0.5.w)),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/se.png',
                  ),
                  Text(
                    'آسف، لا يوجد أي نتائج ',
                    style: TextStyle(fontSize: FontSize.s18),
                  )
                ],
              ))
            ])));
  }
}
