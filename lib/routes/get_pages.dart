import 'package:get/get.dart';
import 'package:tira_app/controllers/auth_controller.dart';
import 'package:tira_app/controllers/home_controller.dart';
import 'package:tira_app/controllers/splash_controller.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/routes/app_routes.dart';
import 'package:tira_app/screens/auth/check/check.dart';
import 'package:tira_app/screens/auth/check/check1.dart';
import 'package:tira_app/screens/auth/auth.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';
import 'package:tira_app/screens/landing_page.dart';
import 'package:tira_app/screens/splash_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.splash, page: () => Splash(), binding: SplashBinding(),),
    GetPage(
        name: AppRoutes.auth, page: () => AuthPage(), binding: AuthBinding()),
    GetPage(name: AppRoutes.home, page: () => LandingPage(), binding: HomeBinding()),
    GetPage(name: AppRoutes.check1, page: () => Check()),
    GetPage(name: AppRoutes.check2, page: () => Check2()),
    
  ];
}
