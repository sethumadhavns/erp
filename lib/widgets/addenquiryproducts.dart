import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Addenquiryproducts extends StatelessWidget {
  final String productname;
  final String noofpeace;
  const Addenquiryproducts(
      {required this.productname, required this.noofpeace, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //maincolumn
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          //row containing image details and info button
          children: [
            Container(
              height: 82.86.h,
              width: 82.27.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  color: const Color(0xFFD9D9D9)),
            ),
            Gap(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             

              //column containg name and peace
              children: [
                medium.reg17(text: productname, color: const Color(0xFF0B0B0B)),
                Gap(12.h),
                Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(43.51.w)),
                    side: BorderSide(
                        width: 1.14.w,
                        color: const Color(0xFF367B86).withOpacity(0.35)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 11.71.w, vertical: 8.17.h),
                    labelPadding: const EdgeInsets.all(0),
                    label: semibold.reg14(
                        text: '$noofpeace Peace',
                        color: const Color(0xFF367B86)))
              ],
            ),
            Gap(10.w),
            Container(
              height: 19.h,
              width: 18.96.w,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF799A9F)),
                  shape: BoxShape.circle),
                  child: Center(child: semibold.reg12(text: '!',color: const Color(0xFF799A9F))),
            )
          ],
        )
      ],
    );
  }
}
