import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:tira_app/constants/colors.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 250.h,
      width: 392.w,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(9.r)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 200.h,
              width: 150.w,
              child: Image.asset('assets/images/image.png')),
          SizedBox(
            width: 260.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('رصف طريق الطيرة الرئيسي'),
                ReadMoreText(
                    'الموقع الرسمي لبلدية الطيرة, يمكنكم من التواصل معنا في ل أي وقت و الاستفادة ...من جميع خدماتنا لبناء اتقلت نقفلنتت',
                    numLines: 2,
                    readMoreText: 'اقرأ المزيد',
                    readLessText: 'اقرأ أقل')
              ],
            ),
          )
        ],
      ),
    );
  }
}
