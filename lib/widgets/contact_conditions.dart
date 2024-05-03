import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/contactdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Conditions {
  followUpRequiredOrange,
  newContact,
  validityDate,
  qualified,
  approvedGreen,
  cancelled,
  followUpRequiredGreen,
  followUpRequiredRed,
  notPaid,
  approvedBlue,
  pending,
  fullyPaid,
  partiallyPaid
}

Widget conditions(Conditions? condition,
    {String? validityDate, bool? clock = false, bool? tick = false}) {
  switch (condition) {
    //follow up chip orange
    case Conditions.followUpRequiredOrange:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.followUpOrangeChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.followUpOrangeChip.withOpacity(0.08),
              )),
          label: medium.reg12(
              text: 'Follow up Required', color: colors.followUpOrangeChip));
              //new chip
    case Conditions.newContact:
      return Chip(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        labelPadding: const EdgeInsets.all(0),
        label: semibold.reg12(text: 'New', color: colors.newContactChip),
        backgroundColor: colors.newContactChip.withOpacity(0.08),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              width: 0,
              color: colors.newContactChip.withOpacity(0.08),
            )),
      );
      //validity chip
    case Conditions.validityDate:
      return Chip(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
        labelPadding: const EdgeInsets.all(0),
        label: semibold.reg12(
            text: 'Validity Date:$validityDate',
            color: colors.validityDateChipText),
        backgroundColor: colors.primaryGreenColor.withOpacity(0.08),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              width: 0,
              color: colors.primaryGreenColor.withOpacity(0.08),
            )),
      );
      //qualified chip
    case Conditions.qualified:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.qualifiedChip.withOpacity(0.15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.qualifiedChip.withOpacity(0.15),
              )),
          label: medium.reg12(text: 'Qualified', color: colors.qualifiedChip));
          //approved green chip
    case Conditions.approvedGreen:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.approvedChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.approvedChip.withOpacity(0.08),
              )),
          label: medium.reg12(text: 'Approved', color: colors.approvedChip));

          //cancelled chip
    case Conditions.cancelled:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.redChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.redChip.withOpacity(0.08),
              )),
          label: medium.reg12(text: 'Cancelled', color: colors.redChip));
          //follow up green chip
    case Conditions.followUpRequiredGreen:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.backGroundGreenChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.backGroundGreenChip.withOpacity(0.08),
              )),
          label: medium.reg12(
              text: 'Follow up Required', color: colors.approvedChip));

              //follow up red chip
    case Conditions.followUpRequiredRed:
      return Chip(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
          labelPadding: const EdgeInsets.all(0),
          backgroundColor: colors.redChip.withOpacity(0.08),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 0,
                color: colors.redChip.withOpacity(0.08),
              )),
          label:
              medium.reg12(text: 'Follow up Required', color: colors.redChip));

              //not paid chip
    case Conditions.notPaid:
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (clock == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpOrangeChip.withOpacity(0.08),
                  shape: BoxShape.circle),
              child: Center(
                  child: SvgPicture.asset(
                images.clock,
                height: 16.74.h,
                width: 16.74.w,
              )),
            ),
          if (tick == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpGreenChip.withOpacity(0.08),
                  shape: BoxShape.circle),
              child: Center(
                  child: SvgPicture.asset(
                images.tick,
                height: 18.74.h,
                width: 18.74.w,
              )),
            ),
          Container(
            height: 27.h,
            width: 69.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.w),
              color: colors.redChip.withOpacity(0.08),
            ),
            child: Center(
                child: medium.reg13(text: 'Not Paid', color: colors.redChip)),
          )
        ],
      );
      //approved blue chip
    case Conditions.approvedBlue:
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tick == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.approvedChipBlue.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.tick,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.approvedChipBlue,
              )),
            ),
          Container(
            height: 27.h,
            width: 79.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.w),
                color: colors.approvedChipBlue.withOpacity(0.08)),
            child: Center(
                child: medium.reg13(
                    text: 'Approved', color: colors.approvedChipBlue)),
          ),
        ],
      );
      case Conditions.pending:
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (clock == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpOrangeChip.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.clock,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.followUpOrangeChip,
              )),
            ),
          Container(
            height: 27.h,
            width: 69.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.w),
                color: colors.followUpOrangeChip.withOpacity(0.08)),
            child: Center(
                child: medium.reg13(
                    text: 'Pending', color: colors.followUpOrangeChip)),
          ),
        ],
      );
      case Conditions.partiallyPaid:
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
           if (tick == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.approvedChipBlue.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.tick,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.followUpGreenChip,
              )),
            ),
          if (clock == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpOrangeChip.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.clock,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.followUpOrangeChip,
              )),
            ),
          Container(
            height: 27.h,
            width: 98.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.w),
                color: colors.followUpOrangeChip.withOpacity(0.08)),
            child: Center(
                child: medium.reg13(
                    text: 'Partially paid', color: colors.followUpOrangeChip)),
          ),
        ],
      );
      case Conditions.fullyPaid:
      return Row(children: [if (tick == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpGreenChip.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.tick,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.followUpGreenChip,
              )),
            ),
          if (clock == true)
            Container(
              height: 26.74.h,
              width: 26.74.w,
              decoration: BoxDecoration(
                  color: colors.followUpOrangeChip.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(50.w)),
              child: Center(
                  child: SvgPicture.asset(
                images.clock,
                height: 16.74.h,
                width: 16.74.w,
                color: colors.followUpOrangeChip,
              )),
            ),
             Container(
            height: 27.h,
            width: 77.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.w),
                color: colors.followUpGreenChip.withOpacity(0.08)),
            child: Center(
                child: medium.reg13(
                    text: 'Fully Paid', color: colors.followUpGreenChip)),
          ),],);


    default:
      return Container(

      );
  }
}
