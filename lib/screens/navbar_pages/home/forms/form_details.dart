import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/controllers/forms_controller.dart';
import 'package:tira_app/core/font_manager.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

class FormDetails extends StatelessWidget {
  const FormDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final FormController formController = Get.put(FormController());
    // formController.formValue == true?

    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            AppBarr(
              title: 'الاستمارات',
              leading: SizedBox(),
              actions: GestureDetector(
                child: Icon(Icons.arrow_forward),
                onTap: () => Get.back(),
              ),
            ),
            ContainerBody(
                widget: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'فتح باب التسجيل للتطوع في المجال الزراعي',
                        style: TextStyle(
                            fontSize: FontSize.s20,
                            fontWeight: FontWeightManager.medium),
                      ),
                      FormWidget(label: 'الاسم الأول', hint: 'الاسم الأول'),
                      FormWidget(label: 'اسم العائلة', hint: 'اسم العائلة'),
                      FormWidget(label: 'تاريخ الميلاد', hint: 'تاريخ الميلاد'),
                      FormWidget(label: 'العنوان', hint: 'العنوان'),
                      FormWidget(
                          label: 'الحالة الأكاديمية',
                          hint: 'الحالة الأكاديمية'),
                      UploadWidget(
                          label: 'التوقيع',
                          image: 'assets/images/sign.png',
                          imageLabel: ''),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child:
                            AuthButton(onTap: (() {}), buttonText: 'تقدم الآن'),
                      )
                    ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
