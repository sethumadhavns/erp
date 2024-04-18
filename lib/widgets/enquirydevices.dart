import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Enquirydevices extends StatelessWidget {
  final String nameofdevice;
  final String noofpiece;
  const Enquirydevices({required this.nameofdevice,required this.noofpiece,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height:153.08.h ,width: 152.7.w,color: Color(0xFFD9D9D9),),
        Gap(10.1.h),
        semibold.reg14(text: nameofdevice,color: Color(0xFF000000)),
        Gap(6.73.h),
        Chip(side: BorderSide(width: 11.14.w,color: Color(0xFF367B86).withOpacity(0.35)),padding: EdgeInsets.symmetric(horizontal:11.71.w ,vertical: 8.17.h),labelPadding: EdgeInsets.all(0),label: semibold.reg14(text: nameofdevice,color: Color(0xFF367B86)))
      ],
    );
  }
}