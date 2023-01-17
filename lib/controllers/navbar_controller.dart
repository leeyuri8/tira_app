import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/screens/navbar_pages/home/home.dart';

class NavBarController extends GetxController {
  var tabIndex = 0.obs;
  var isPressed = false.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
//   Widget currentScreen = const HomeScreen();
//   List<Widget> listScreens = [];
// }

// class NavBarBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => NavBarController());
//   }
// }
}
