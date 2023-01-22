import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/core/color_manager.dart';

class BarCode extends StatelessWidget {
  const BarCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.h,
      width: 378.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          Text(
            'مول الأندلس',
            style: TextStyle(color: mainColor),
          ),
          Image.asset('assets/images/barcode.png')
        ],
      ),
    );
  }
}
