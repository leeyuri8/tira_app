import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/myorders/myorders_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controllers/navbar_controller.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    //    final navBarController = Get.put(NavBarController());
    // navBarController.currentTab.value = 4;
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
            child: Column(
          children: [
            AppBarr(
                title: 'طلباتي',
                actions: Icon(Icons.search),
                leading: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.menu),
                )),
            ContainerBody(
                widget: SingleChildScrollView(
              padding: EdgeInsets.only(top: 15.h, bottom: 50.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ToggleSwitch(
                    minHeight: 45.h,
                    minWidth: 192.2.w,
                    totalSwitches: 2,
                    cornerRadius: 20.r,
                    activeBgColor: [mainColor],
                    inactiveBgColor: white,
                    borderColor: [Colors.grey],
                    borderWidth: 0.4.w,
                    initialLabelIndex: 0,
                    labels: ['طلباتي الجديدة', 'طلباتي المكتملة'],
                    fontSize: 18.sp,
                    activeFgColor: white,
                    inactiveFgColor: mainColor,
                    onToggle: (index) {},
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return OrdersCard();
                    },
                  )
                ],
              ),
            ))
          ],
        )));
  }
}
