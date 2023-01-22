import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/polls/polls_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class Polls extends StatelessWidget {
  const Polls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarr(
            title: 'الاستطلاعات',
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
            margin: EdgeInsets.all(15),
            child: ListView(
              children: [
                SizedBox(
                  height: 51.h,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: white,
                        hintText: ' بحث في الاستطلاعات',
                        filled: true,
                        isDense: true,
                        suffixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(color: HexColor('#FFB1A0')),
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
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return PollsCard();
                    }))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
