import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class EnquiryAccounts extends StatelessWidget {
  final String name;
  final String? code;
  final String? role;
  final String? date;
  final String? name2;
  final String? email;
  final String? phoneNo;
  final bool? editButton;
  final bool? call;
  final String? validityDate;
 
final ContactConditions? condition;


  const EnquiryAccounts(
      {required this.name,
      this.code,
      this.role,
      this.date,
      this.name2,
      this.email,
      this.phoneNo,
      this.editButton = false,
      this.call = false,
      this.validityDate,
      
      this.condition,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 44.35.h,
                  width: 44.35.w,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle, color:colors.imageIconBackgroundColour),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        images.contactIcon,
                        height: 15.43.h,
                        width: 12.77.w,
                      )),
                ),
                Gap(17.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        semibold.reg17(
                            text: name, color: colors.contactNameColor),
                        Gap(5.w),
                        if (code != null&&editButton==false) medium.reg14(text: code!)
                      ],
                    ),
                    Gap(9.h),
                    if (role != null && editButton == false)
                      medium.reg14(text: role!),
                    if (date != null && editButton == false&&role==null)
                      medium.reg14(text: date!)
                  ],
                )
              ],
            ),
            if (editButton == true)
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    images.edit,
                    height: 17.58.h,
                    width: 17.58.w,
                  ))
                  else 
                  if(date!=null&&role!=null)
                   medium.reg14(text: date!),
                   if(condition!=null&&editButton==false)
                   conditions(condition,validityDate)
            
          ],
        ),
        Gap(20.h),
        if (name2 != null)
          Container(
            height: 72.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: colors.primaryGreenColour.withOpacity(0.08)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            images.contactIcon,
                            height: 12.58.h,
                            width: 10.36.w,
                            color: colors.primaryGreenColour,
                          ),
                          Gap(8.35.w),
                          medium.reg14(
                              text: name2 ?? '', color: colors.primaryGreenColour)
                        ],
                      ),
                      if (phoneNo != null)
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              images.phone,
                              height: 11.76.h,
                              width: 11.76.w,
                              color: colors.primaryGreenColour,
                            ),
                            Gap(6.23.w),
                            medium.reg14(
                                text: phoneNo ?? '',
                                color:colors.primaryGreenColour)
                          ],
                        )
                    ],
                  ),
                  Gap(6.h),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        images.email,
                        height: 10.88.h,
                        width: 13.47.w,
                      ),
                      Gap(8.w),
                      medium.reg14(
                          text: email ?? '', color:colors.primaryGreenColour)
                    ],
                  )
                ],
              ),
            ),
          ),
        Gap(20.h),
        if (call == true)
          Container(
            height: 46.66.h,
            decoration: BoxDecoration(
                border: Border.all(color:colors.primaryGreenColour),
                borderRadius: BorderRadius.circular(52.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(images.phone,
                    height: 14.66.h,
                    width: 14.66.w,
                    color: colors.primaryGreenColour),
                Gap(10.w),
                semibold.reg16(text: 'Call', color: colors.primaryGreenColour)
              ],
            ),
          )
      ],
    );
  }
}
