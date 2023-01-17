import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/routes/app_routes.dart';

class SplashController extends GetxController {
  // final getStorage = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offAllNamed(AppRoutes.auth);
    });
    // if(getStorage.read('id') != null){

    // }
  }
}

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
