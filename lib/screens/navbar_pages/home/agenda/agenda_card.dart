import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/constants/images_path.dart';

class AgendaCard extends StatelessWidget {
  const AgendaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      height: 112.h,
      width: 376.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
          boxShadow: [
            BoxShadow(color: Color.fromRGBO(88, 88, 88, 0.48), blurRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('يوم  المرأة العالمي'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImageAssets.date),
              SizedBox(
                width: 10,
              ),
              Text('تاريخ الاجازة: 3-8-2022'),
            ],
          )
        ],
      ),
    );
  }
}
