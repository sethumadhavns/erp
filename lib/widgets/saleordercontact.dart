import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Saleordercontact extends StatelessWidget {
  final String name;
  final String code;
  final String date;
  final String price;
  final String? validitydate;
  final Contactconditions condition;
  const Saleordercontact(
      {required this.name,
      required this.code,
      required this.date,
      required this.price,
      required this.condition,
      this.validitydate,

      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //maincolumn
      children: [
        Row(
          //row containing 2 components thats should use spacebetween
          children: [
            Column(
              //column containg name,date and price
              children: [
                Row(
                  //row containing name and code
                  children: [
                    medium.reg16(text: name),
                    medium.reg16(text: code),
                  ],
                ),
                Gap(12.h),
                medium.reg14(text: date, color: const Color(0xFF6F6F6F)),
                Gap(25.5.h),
                Row(
                  //Row containing price and condition
                  children: [medium.reg18(text: price),
                  Gap(10.w),
                  conditions(condition,validitydate),
                  ],
                  
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
