import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/constants/images_path.dart';
import 'package:tira_app/controllers/splash_controller.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
    final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.onReady;

    return Container(
      decoration: BoxDecoration(
          gradient: gradient1,
          image: DecorationImage(
              image: AssetImage(
                ImageAssets.splashLogo,
              ),
              scale: 1.1)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          ImageAssets.splashLogo2,
          scale: 1,
        ),
      ),
    );
  }
}
