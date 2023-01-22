import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

class TechnicalSupport extends StatelessWidget {
  const TechnicalSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'الدعم الفني',
                actions: GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () => Get.back(),
                ),
                leading: SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                        'يمكنكم التواصل مع الدعم الفني و الإبلاغ عن المشكلة التي تواجهك'),
                    FormWidget(label: 'اسم المرسل', hint: 'اسم المرسل'),
                    FormWidget(label: 'عنوان الرسالة', hint: 'عنوان الرسالة'),
                    FormWidget(
                      label: '...نص الرسالة',
                      hint: '',
                      lines: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: AuthButton(
                        onTap: () {},
                        buttonText: 'إرسال',
                      ),
                    )
                  ],
                ),
              ))
            ])));
  }
}
