import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EnquiryDevices extends StatelessWidget {
  final String nameOfProduct;
  final String noOfPiece;
  ///Show product image,[nameOfProduct] and [noOfPiece] available in enquiry page.
  const EnquiryDevices(
      {required this.nameOfProduct, required this.noOfPiece, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 153.08.h,
          width: 152.7.w,
          decoration: BoxDecoration(
              color: colors.boxColor,
              borderRadius: BorderRadius.circular(6.73.w)),
        ),
        Gap(10.1.h),
        semibold.reg14(text: nameOfProduct, color:Colors.black),
        Gap(6.73.h),
        Chip(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(43.51.w)),
            side: BorderSide(
                width: 1.14.w,
                color: colors.primaryGreenColor.withOpacity(0.35)),
            padding:
                EdgeInsets.symmetric(horizontal: 11.71.w, vertical: 8.17.h),
            labelPadding: const EdgeInsets.all(0),
            label: semibold.reg14(
                text: '$noOfPiece Peace', color: colors.primaryGreenColor))
      ],
    );
  }
}
