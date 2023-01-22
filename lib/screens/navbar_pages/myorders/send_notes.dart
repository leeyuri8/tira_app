import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/color_manager.dart';
import 'package:tira_app/screens/navbar_pages/myorders/notes_cards.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class SendNotes extends StatelessWidget {
  const SendNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarr(
              title: 'المراسلات و الملاحظات',
              actions: GestureDetector(
                child: Icon(Icons.arrow_forward),
                onTap: () => Get.back(),
              ),
              leading: SizedBox(
                width: 2,
              ),
            ),
            ContainerBody(
              widget: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          left: 15.w, right: 15.w, bottom: 20.h),
                      height: 691.h,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: ((context, index) {
                            return NotesCard();
                          }))),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 75.h,
                        width: 325.01.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: mainColor, width: 2),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '...اكتب رسالة',
                                style: TextStyle(
                                    color: secondColor, fontSize: 20.sp),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.attach_file,
                                color: secondColor,
                                size: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                      Image.asset('assets/images/Send.png')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
