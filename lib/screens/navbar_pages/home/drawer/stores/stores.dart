import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/stores/stores_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class Stores extends StatelessWidget {
  const Stores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'المحلات التجارية',
                actions: GestureDetector(
                  child: Icon(Icons.arrow_forward_ios),
                  onTap: () => Get.back(),
                ),
                leading: SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    physics: ScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return StoresCard();
                    })),
              ))
            ])));
  }
}
