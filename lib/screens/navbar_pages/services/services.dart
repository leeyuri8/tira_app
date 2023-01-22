import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/services/servicesDetails.dart';
import 'package:tira_app/screens/navbar_pages/services/services_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              AppBarr(
                  title: 'الخدمات',
                  actions: Icon(Icons.search),
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.menu),
                  )),
              ContainerBody(
                widget: Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 12,
                    right: 12,
                  ),
                  child: GridView.builder(
                    // padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    shrinkWrap: true,
                    itemCount: 19,
                    physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.w,
                        mainAxisSpacing: 10.h),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => ServicesDetails());
                        },
                        child: ServicesCard(
                          cardColor: (index == 0 || index % 2 == 0)
                              ? white
                              : mainColor,
                          imageColor: (index == 0 || index % 2 == 0)
                              ? mainColor
                              : white,
                          textColor: (index == 0 || index % 2 == 0)
                              ? mainColor
                              : white,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
