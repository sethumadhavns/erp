import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Saleordercontact extends StatelessWidget {
  final String name;
  final String code;
  final String date;
  final String price;
  final String? validitydate;
  final Contactconditions condition;
  final bool? editoption;
  const Saleordercontact(
      {required this.name,
      required this.code,
      required this.date,
      required this.price,
      required this.condition,
      this.validitydate,
      this.editoption = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      //row containing 2 components thats should use spacebetween
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //column containg name,date and price
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
            medium.reg14(text: date, color: const Color(0xFF6F6F6F)),
            Gap(25.5.h),
            Row(
              //Row containing price and condition
              children: [
                medium.reg18(text: price),
                Gap(10.w),
                conditions(condition, validitydate),
              ],
            )
          ],
        ),
        //2nd component of row
        if (editoption == true)
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/edit.svg',
                height: 18.3.h,
                width: 18.3.w,
              ),
              Gap(19.78.w),
              SvgPicture.asset('assets/images/delete.svg')
            ],
          )
        else
          IconButton(
              //2nd component of row
              onPressed: () {},
              icon: Container(
                height: 49.88.h,
                width: 49.88.w,
                decoration: const BoxDecoration(
                    color: Color(0xFFEDEDED), shape: BoxShape.circle),
                child: Center(
                    child: SvgPicture.asset(
                  'assets/images/arrow.svg',
                  height: 12.95.h,
                  width: 15.5.w,
                )),
              ))
      ],
    );
  }
}
