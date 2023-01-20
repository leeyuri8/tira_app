import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/screens/navbar_pages/notification/notification_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                  title: 'الإشعارات',
                  actions: Icon(Icons.search),
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.menu),
                  )),
              ContainerBody(
                  widget: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return NotificationCard();
                      })))

              //       Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset(
              //         'assets/images/notii.png',
              //         height: 208.h,
              //         width: 208.w,
              //       ),
              //       SizedBox(
              //         height: 10.h,
              //       ),
              //       Text(
              //         'لا يوجد أي إشعارات',
              //         style: TextStyle(fontSize: 18.sp),
              //       )
              //     ],
              //   ))
            ])));
  }
}
