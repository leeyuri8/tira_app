import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/images_path.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';
import 'package:tira_app/widgets/upload_widget.dart';

class CitizenService extends StatelessWidget {
  const CitizenService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarr(
            title: 'خدمة المواطنين',
            actions: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Get.back(),
            ),
            leading: SizedBox(),
          ),
          ContainerBody(
              widget: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
              Text(
                'يمكنكم التواصل مع خدمة العملاء عبر رسائل التطبيق أو بالاتصال على أرقامنا المدرجة في الأسفل ',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
              ),
              FormWidget(label: 'عنوان الرسالة', hint: 'عنوان الرسالة'),
              SizedBox(
                height: 10,
              ),
              FormWidget(
                label: 'نص الرسالة',
                hint: '',
                lines: 4,
              ),
              SizedBox(
                height: 10,
              ),
              UploadWidget(
                  label: 'المرفقات',
                  image: ImageAssets.upload,
                  imageLabel: 'مرفقات '),
              SizedBox(
                height: 50,
              ),
              AuthButton(onTap: () {}, buttonText: 'إرسال')
            ]),
          ))
        ],
      ),
    );
  }
}
