import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/contact_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SaleOrderContact extends StatelessWidget {
  
  final String name;
  
  final String code;
  final String date;
  final String price;
  final String? validityDate;
  final ContactConditions condition;
  final bool? editOption;
  ///In Sale order page ,contains Contacts [name],[code],[price] and [date] and [condition].
  ///[editOption] is set to default false,when it is set to true,it appears and more info icon disappear 
  const SaleOrderContact(
    
      {
        required this.name,
      required this.code,
      required this.date,
      required this.price,
      required this.condition,
      this.validityDate,
      this.editOption = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      //row containing 2 components thats should use space between
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //column containing name,date and price
          children: [
            Row(
              //row containing name and code
              children: [
                medium.reg16(text: name),
                Gap(10.w),
                medium.reg16(text: code),
              ],
            ),
            Gap(12.h),
            medium.reg14(text: date, color: colors.quotationProductPriceColor),
            Gap(22.h),
            Row(
              //Row containing price and condition
              children: [
                medium.reg18(text: price),
                Gap(10.w),
                conditions(condition, validityDate),
              ],
            )
          ],
        ),
        //2nd component of row
        if (editOption == true)
          Row(
            children: [
              SvgPicture.asset(
                images.edit,
                height: 18.3.h,
                width: 18.3.w,
              ),
              Gap(19.78.w),
              SvgPicture.asset(images.deleteBin)
            ],
          )
        else
          IconButton(
              //2nd component of row
              onPressed: () {},
              icon: Container(
                height: 49.88.h,
                width: 49.88.w,
                decoration:  BoxDecoration(
                    color:colors.circleContainerColor, shape: BoxShape.circle),
                child: Center(
                    child: SvgPicture.asset(
                  images.arrowIcon,
                  height: 12.95.h,
                  width: 15.5.w,
                )),
              ))
      ],
    );
  }
}
