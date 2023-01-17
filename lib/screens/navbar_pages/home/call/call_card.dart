import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/main.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call_details.dart';

class CallCard extends StatelessWidget {
  RepostsCard repostsCard;
  CallCard({
    required this.repostsCard,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 95.h,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: white,
      ),
      child: ExpansionTile(
        textColor: mainColor,
        collapsedTextColor: mainColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(repostsCard.image),
            SizedBox(
              width: 10.w,
            ),
            Text(repostsCard.title)
          ],
        ),
        trailing: SizedBox(),
        children: repostsCard.list,
      ),
    );
  }
}

class RepostsCard {
  String image;
  String title;
  List<Widget> list;
  VoidCallback? onPressed;

  RepostsCard(this.image, this.title, this.list, this.onPressed);
}

List<RepostsCard> reportsCard = <RepostsCard>[
  RepostsCard(
      'assets/images/security.png',
      'الأمن و السلامة',
      [
        GestureDetector(
          onTap: () {
            Get.to(() => CallDetails());
          },
          child: Row(
            children: [
              Image.asset('assets/images/animals.png'),
              Text(
                'عنف الحيوانات',
              ),
            ],
          ),
        ),
        Divider(
          color: secondColor,
          height: 2,
        ),
        Row(
          children: [
            Image.asset('assets/images/thief.png'),
            Text(
              'سرقة الممتلكات  العامة',
            ),
          ],
        ),
        Divider(
          color: secondColor,
        ),
        Row(
          children: [
            Image.asset('assets/images/violence.png'),
            Text('العنف المشتبه به'),
          ],
        ),
      ],
      () {}),
  RepostsCard('assets/images/fees.png', 'الجباية و الضرائب',
      [Text('ddd'), Text('dddd')], () {}),
  RepostsCard('assets/images/veterinary.png', 'الطب البيطري',
      [Text('ddd'), Text('dddd')], () {}),
  RepostsCard('assets/images/business.png', 'الأعمال',
      [Text('ddd'), Text('dddd')], () {}),
  RepostsCard('assets/images/environment.png', 'البيئة و النظافة',
      [Text('ddd'), Text('dddd')], () {}),
  RepostsCard('assets/images/education.png', 'المؤسسات التعليمية',
      [Text('ddd'), Text('dddd')], () {}),
];
