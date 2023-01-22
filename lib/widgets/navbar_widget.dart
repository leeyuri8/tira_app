import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/screens/navbar_pages/myorders/my_orders.dart';
import 'package:tira_app/screens/navbar_pages/notification/notifications.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports.dart';

import '../screens/navbar_pages/services/services.dart';

class NavBarWidget extends StatelessWidget {
  String text;
  IconData image;
  VoidCallback? onPressed = () {};
  NavBarWidget({
    required this.text,
    required this.image,
    // required this.widget,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(),
      MyOrders(),
      ServiceScreen(),
      Reports(),
      NotificationsScreen()
    ];

    final navBarController = Get.put(NavBarController());

    PageController _myPage = PageController(initialPage: 0);

    return MaterialButton(
      // splashColor: mainColor,
      // hoverColor: black,
      // highlightColor: mainColor,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            image,
            size: 25.h,
            color: HexColor('#898989'),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: HexColor('#898989'),
            ),
          ),
        ],
      ),
    );
  }
}
