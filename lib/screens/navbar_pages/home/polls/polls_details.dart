import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';
import 'package:tira_app/widgets/form_widget.dart';

import '../../../../controllers/forms_controller.dart';

class PollsDetails extends StatelessWidget {
  const PollsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final FormController formController = Get.put(FormController());
    // formController.formValue == true?

    return Scaffold(
      body: ListView(
        children: [
          AppBarr(
            title: 'الاستطلاعات',
            leading: SizedBox(),
            actions: GestureDetector(
              child: Icon(Icons.arrow_forward),
              onTap: () => Get.back(),
            ),
          ),
          ContainerBody(
              widget: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'إقامة مهرجان ثقافي لدعم ذوي الاحتياجات الخاصة',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق',
                maxLines: 8,
                style: TextStyle(color: secondColor, fontSize: 18.sp),
              ),
              Row(
                children: [
                  Text(':الإجابة'),
                  Obx(
                    () => Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                activeColor: Colors.green,
                                value: formController.formValue.value == true
                                    ? true
                                    : false,
                                onChanged: ((valuue) {
                                  formController.formValue.value = true;
                                  formController.formValue.value = valuue!;

                                  print(valuue);
                                })),
                            Text('نعم')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                activeColor: Colors.green,
                                value: formController.formValue.value == false
                                    ? true
                                    : false,
                                onChanged: ((valuue) {
                                  formController.formValue.value = false;

                                  formController.formValue.value = valuue!;
                                  print(valuue);
                                })),
                            Text('لا'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              FormWidget(
                label: 'ملاحظات',
                hint: '',
                lines: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                    child:
                        AuthButton(onTap: () {}, buttonText: 'تقديم الاجابة')),
              )
            ]),
          ))
        ],
      ),
    );
  }
}
