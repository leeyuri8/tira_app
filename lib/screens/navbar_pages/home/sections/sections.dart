import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/sections/section_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      AppBarr(
        title: 'الأقسام',
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
        child: ListView.builder(itemBuilder: ((context, index) {
          return SectionCard();
        })),
      ))
    ]));
  }
}
