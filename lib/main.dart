import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/controllers/navbar_controller.dart';
import 'package:tira_app/controllers/splash_controller.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/routes/get_pages.dart';
import 'package:tira_app/screens/auth/auth.dart';

import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/screens/landing_page.dart';
import 'package:tira_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return GetMaterialApp(
              theme:
                  ThemeData(textTheme: TextTheme(), fontFamily: 'Hanimation'),
              debugShowCheckedModeBanner: false,
              textDirection: TextDirection.rtl,
              getPages: AppPages.pages,
              initialBinding: SplashBinding(),
              initialRoute: AppRoutes.splash,
              home: Splash());
        })
        );
  }
}

// class Home extends StatelessWidget {
//    Home({super.key});

//   final navController = Get.put(NavBarController());
  
//   @override
//   Widget build(BuildContext context) {
//     final PageStorageBucket bucket = PageStorageBucket();
//     navController.currentScreen = HomeScreen();
//     return Scaffold(
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: PageStorage(bucket: bucket, child: navController.currentScreen ),

//       floatingActionButton: FloatingActionButton(
//         backgroundColor: mainColor,
//         child: Icon(Icons.home),
//         onPressed: () {},
//       ),
//     );
//   }
// }
