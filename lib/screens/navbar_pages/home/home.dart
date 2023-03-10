import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/drawer.dart';
import 'package:tira_app/screens/navbar_pages/home/search_screen.dart';
import 'package:tira_app/screens/navbar_pages/home/main_card.dart';
import 'package:tira_app/widgets/call_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final NavBarController controller = Get.put(NavBarController());

    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Color(0xffECECEC),
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: 18,
            ),
            child: GestureDetector(
              onTap: (() => Get.to(() => SearchScreen())),
              child: Icon(
                Icons.search,
                size: 22,
              ),
            ),
          ),
        ],
        title: Center(
            child: Text(
          'بلدة الطيرة',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Image.asset(
              'assets/images/menu.png',
              height: 9.h,
              width: 34.w,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),

        // ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: mainColor,
          child: Container(
            decoration: BoxDecoration(
                color: HexColor('#ECECEC'),
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(220.r))),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => CallScreen());
                    },
                    child: CallContainer()),
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h, left: 30.w, right: 30.w),
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.h,
                      crossAxisSpacing: 10.w,
                      children: List.generate(categories.length, (index) {
                        return GestureDetector(
                          onTap: () {},
                          child: MainCard(
                            category: categories[index],
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
