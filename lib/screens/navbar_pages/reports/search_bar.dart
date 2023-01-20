import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports_row.dart';

class SearchBaar extends StatelessWidget {
  const SearchBaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 391.h,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.r),
                        topRight: Radius.circular(15.r))),
                child: Column(children: [
                  Text(
                    'فلتر التقارير',
                    style: TextStyle(color: mainColor, fontSize: 20.sp),
                  ),
                  Divider(
                    color: secondColor,
                    thickness: 0.4,
                  ),
                  ReportRow(
                      image: 'assets/images/type.png', title: 'نوع التقرير'),
                  Divider(
                    color: secondColor,
                    thickness: 0.3,
                  ),
                  ReportRow(
                      image: 'assets/images/state.png', title: 'حالة التقرير'),
                  Divider(
                    color: secondColor,
                    thickness: 0.3,
                  ),
                  ReportRow(
                      image: 'assets/images/number.png', title: 'رقم التقرير'),
                  Divider(
                    color: secondColor,
                    thickness: 0.3,
                  ),
                  ReportRow(
                      image: 'assets/images/datee.png', title: 'تاريخ التقرير'),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainColor,
                            fixedSize: Size(296.w, 42.h)),
                        child: Text(
                          'عرض النتائج',
                          style: TextStyle(color: white, fontSize: 16.sp),
                        )),
                  )
                ]),
              );
            },
          );
        },
        child: Container(
          height: 51.h,
          width: 368.w,
          child: TextField(
            decoration: InputDecoration(
              fillColor: white,
              hintText: ' بحث في التقارير',
              filled: true,
              enabled: false,
              suffixIcon: Image.asset('assets/images/filter.png'),
              hintStyle: TextStyle(
                color: HexColor('#FFB1A0'),
                wordSpacing: 2,
              ),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide(color: mainColor, width: 0.5.w)),
            ),
          ),
        ),
      ),
    );
  }
}
