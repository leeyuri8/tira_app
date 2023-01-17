import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

class ShowIdeas extends StatelessWidget {
  const ShowIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppBarr(
          title: 'إعرض أفكارك',
          actions: GestureDetector(
            child: Icon(Icons.arrow_forward),
            onTap: () => Get.back(),
          ),
          leading: SizedBox(),
        ),
        ContainerBody(
            widget: Container(
          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'إعرض أفكارك التنموية و البناءة للمساعدة في رقي و تطور المجتمع '),
              FormWidget(label: 'عنوان الفكرة', hint: 'عنوان الفكرة'),
              FormWidget(
                label: 'الميزانية المتوقعة للتنفيذ',
                hint: 'مثال: 20000 شيكل',
                // icon: Icon(
                //   Icons.ac_unit_sharp,
                //   size: 24,
                //   semanticLabel: '₪',
                // ),
              ),
              FormWidget(
                label: 'شرح مختصر عن الفكرة',
                hint: '',
                lines: 4,
              ),
              UploadWidget(
                  label: 'المرفقات',
                  image: 'assets/images/upload.png',
                  imageLabel: 'أرفق عرض تقديمي أو ملفات تشرح الفكرة بالتفصيل'),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: AuthButton(onTap: () {}, buttonText: 'تقديم الفكرة'))
            ],
          ),
        ))
      ],
    ));
  }
}
