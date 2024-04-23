import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Enquirydevices extends StatelessWidget {
  final String nameofdevice;
  final String noofpiece;
  const Enquirydevices(
      {required this.nameofdevice, required this.noofpiece, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 153.08.h,
          width: 152.7.w,
          decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(6.73.w)),
        ),
        Gap(10.1.h),
        semibold.reg14(text: nameofdevice, color: const Color(0xFF000000)),
        Gap(6.73.h),
        Chip(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(43.51.w)),
            side: BorderSide(
                width: 1.14.w,
                color: const Color(0xFF367B86).withOpacity(0.35)),
            padding:
                EdgeInsets.symmetric(horizontal: 11.71.w, vertical: 8.17.h),
            labelPadding: const EdgeInsets.all(0),
            label: semibold.reg14(
                text: '$noofpiece Peace', color: const Color(0xFF367B86)))
      ],
    );
  }
}
