import 'package:flutter/material.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/widgets/bottomCont.dart';

class TopBar extends StatelessWidget {
  Widget widget;

  TopBar({required this.widget, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 330.h,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                gradient: gradient1,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100))),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(50),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70),
              )),
              child: Image.asset(
                'assets/images/logo.png',
                scale: 1.6,
              ),
            ),
          ),
          Positioned(top: 170, left: 30, right: 30, child: widget),
          Align(alignment: Alignment.bottomRight, child: BottomContainer())
        ],
      ),
    );
  }
}
