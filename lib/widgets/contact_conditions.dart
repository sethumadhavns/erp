import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ContactConditions {
  
  followUpRequiredOrange,
  newContact,
  validityDate,
  qualified,
  approved,
  cancelled,
  followUpRequiredGreen,
  followUpRequiredRed,
  notPaid,
}

Widget conditions(ContactConditions? condition, String? validityDate)
 {
  switch (condition) {
    case ContactConditions.followUpRequiredOrange:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.followUpOrangeChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side:  const BorderSide(
                width: 0,
                
              )),
          label: medium.reg12(
              text: 'Follow up Required', color: colors.followUpOrangeChip));
    case ContactConditions.newContact:
      return Chip(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        labelPadding: const EdgeInsets.all(0),
        label: semibold.reg12(text: 'New', color:colors.newContactChip ),
        backgroundColor: colors.newContactChip.withOpacity(0.08),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              width: 0,
              
            )),
      );
    case ContactConditions.validityDate:
      return Chip(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        labelPadding: const EdgeInsets.all(0),
        label: semibold.reg12(
            text: 'Validity Date:$validityDate',
            color:colors.validityDateChipText),
        backgroundColor: colors.primaryGreenColor.withOpacity(0.08),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              width: 0,
             
            )),
      );
    case ContactConditions.qualified:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.qualifiedChip.withOpacity(0.15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                width: 0,
                
              )),
          label:
              medium.reg12(text: 'Qualified', color: colors.qualifiedChip));
    case ContactConditions.approved:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.approvedChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                width: 0,
                
              )),
          label:
              medium.reg12(text: 'Approved', color: colors.approvedChip));
    case ContactConditions.cancelled:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.cancelledChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                width: 0,
               
              )),
          label:
              medium.reg12(text: 'Cancelled', color:colors.cancelledChip));
    case ContactConditions.followUpRequiredGreen:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: const Color(0xFF7DF054).withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                width: 0,
               
              )),
          label: medium.reg12(
              text: 'Follow up Required', color:colors.followUpGreenChip));
    case ContactConditions.followUpRequiredRed:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.followUpRedChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                width: 0,
                
              )),
          label: medium.reg12(
              text: 'Follow up Required', color:colors.followUpRedChip));
    case ContactConditions.notPaid:
      return Row(
        children: [
          Container(
            height: 26.74.h,
            width: 26.74.w,
            decoration:  BoxDecoration(color: const Color(0xFFF09054).withOpacity(0.08),shape: BoxShape.circle),
            child: Center(child: SvgPicture.asset('assets/images/clock.svg')),
          )
        ],
      );

    default:
      return Container();
  }
}
