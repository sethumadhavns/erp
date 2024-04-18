import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum Contactconditions { followuprequired, newcontact }

Widget conditions(Contactconditions? condition) {
  switch (condition) {
    case Contactconditions.followuprequired:
      return Chip(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding:const EdgeInsets.all(0),
          backgroundColor: const Color(0xFFF09054).withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: const Color(0xFF8699FF).withOpacity(0.08),
              )),
          label: medium.reg12(
              text: 'Follow up Required', color: const Color(0xFFF09054)));
    case Contactconditions.newcontact:
      return Chip(
         padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        labelPadding: const EdgeInsets.all(0),
        label: semibold.reg12(text: 'New', color: const Color(0xFF8699FF)),
        backgroundColor: const Color(0xFF8699FF).withOpacity(0.08),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              width: 0,
              color: const Color(0xFF8699FF).withOpacity(0.08),
            )),
      );
    default:
      return Container();
  }
}
