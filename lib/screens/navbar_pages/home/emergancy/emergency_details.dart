import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/controllers/emergancy_controller.dart';
import 'package:tira_app/screens/navbar_pages/home/emergancy/emer_details_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class EmergencyDetails extends StatelessWidget {
  const EmergencyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final EmergancyConroller emergancyConroller = Get.put(EmergancyConroller());

    return Scaffold(
        body: Column(children: [
      AppBarr(
        title: "إنذارات الحرائق",
        actions: GestureDetector(
          child: Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                      Text(
                        'إنذار خطير',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.sp,
                        ),
                      ),
                      Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                      ),
                      Text(
                        'إنذار تحذيري',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.sp,
                        ),
                      ),
                      Container(
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                      Text(
                        'إنذار تنويهي ',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return EmerDetailsCard(
                        row: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('بالقرب منك على بعد 50 متر'),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('#F8E1DB'),
                                    fixedSize: Size(114.w, 37.h),
                                    side: BorderSide(
                                        strokeAlign: StrokeAlign.inside,
                                        color: mainColor,
                                        width: 1.5.w)),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/mapicon.png',
                                      height: 22.h,
                                      width: 20.w,
                                    ),
                                    Text(
                                      'المكان الآمن',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: FontSize.s18),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      );
                    },
                  )
                ],
              ))))
    ]));
  }
}
