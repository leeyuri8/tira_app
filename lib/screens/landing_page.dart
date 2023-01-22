import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/screens/navbar_pages/myorders/my_orders.dart';
import 'package:tira_app/screens/navbar_pages/services/services.dart';
import 'package:tira_app/screens/navbar_pages/notification/notifications.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports.dart';

import '../widgets/navbar_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      HomeScreen(),
      NotificationsScreen(),
      Reports(),
      ServiceScreen(),
      MyOrders()
    ];
    final NavBarController navBarController =
        Get.put(NavBarController(), permanent: false);

    return Scaffold(
        body: Obx(() => IndexedStack(
              index: navBarController.tabIndex.value,
              children: widgets,
            )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              navBarController.changeTabIndex(0);
            },
            backgroundColor: mainColor,
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Icon(Icons.home), Text('الرئيسية')],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffECECEC),
          elevation: 0,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 65.h,
            margin: EdgeInsets.only(bottom: 15.h, left: 22.w, right: 22.w),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
                boxShadow: [
                  BoxShadow(color: HexColor('#898989'), blurRadius: 10.r)
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarWidget(
                  text: 'طلباتي',
                  image: Icons.ac_unit_sharp,
                  onPressed: () {
                    navBarController.changeTabIndex(4);
                  },
                ),
                NavBarWidget(
                  text: 'الخدمات',
                  image: Icons.design_services_outlined,
                  onPressed: () {
                    navBarController.changeTabIndex(3);
                  },
                ),
                NavBarWidget(
                  text: 'تقاريري',
                  image: Icons.report_sharp,
                  onPressed: () {
                    navBarController.changeTabIndex(2);
                  },
                ),
                NavBarWidget(
                  text: 'الاشعارات',
                  image: Icons.notifications,
                  onPressed: () {
                    navBarController.changeTabIndex(1);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
