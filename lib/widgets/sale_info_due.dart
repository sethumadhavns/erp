

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Due extends StatelessWidget {
  final String name;
  final String code;
  final Widget conditionOne;
  final String dueAmount;
  final String createdDate;
  final String dueDate;
  final Widget conditionTwo;
  const Due(
      {required this.name,
      required this.code,
      required this.conditionOne,
      required this.dueAmount,
      required this.createdDate,
      required this.dueDate,
      required this.conditionTwo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            medium.reg16(
              text: name,
              color: colors.mainNameColor,
            ),
            Gap(5.w),
            medium.reg16(text: code, color: colors.nameCodeColor),
            Gap(5.w),
            conditionOne
          ],
        ),
        Gap(27.h),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                medium.reg16(
                    text: dueAmount,
                    color: colors.quotationProductNoOfPieceColor),
                Gap(13.h),
                medium.reg12(text: 'Due Amount', color: colors.dueAmountColor)
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                medium.reg16(
                    text: createdDate,
                    color: colors.quotationProductNoOfPieceColor),
                Gap(13.h),
                medium.reg12(text: 'Created Date', color: colors.dueAmountColor)
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              medium.reg16(
                    text: dueDate,
                    color: colors.quotationProductNoOfPieceColor),
                Gap(13.h),
                medium.reg12(text: 'Due Date', color: colors.dueAmountColor)
            ],)
          ],
        ),
        Gap(12.h),
   conditionTwo
      ],
    );
  }
}
