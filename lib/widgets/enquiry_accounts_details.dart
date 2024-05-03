import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Details extends StatelessWidget {
  final String name;
  final String? code;
  final String? role;
  final String? date;
  final String? name2;
  final String? email;
  final String? phoneNo;
  final bool? editButton;
  final bool? call;

  final Widget? condition;

  ///For enquiry page to display contacts.
  ///[name2],[phoneNo],and[email] is displayed inside a colored container.
  ///if [editButton] is set to true,it will appear.
  ///[call] is also set to false and will appear only if it is set to true.
  ///[condition] is given to show condition of the account.
  ///[validityDate] is to show validity date up to.

  const Details(
      {required this.name,
      this.code,
      this.role,
      this.date,
      this.name2,
      this.email,
      this.phoneNo,
      this.editButton = false,
      this.call = false,
      this.condition,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //main column
      children: <Widget>[
        Row(
          //for split 2 components to space between
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //for icon and a column contains name and date
        
              children: <Widget>[
                Container(
                  height: 44.35.h,
                  width: 44.35.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colors.imageIconBackgroundColor),
                  child: Center(
                    child: SvgPicture.asset(
                      images.contactIcon,
                      height: 15.43.h,
                      width: 12.77.w,
                    ),
                  ),
                ),
                Gap(17.w),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  //column contain name and date
        
                  children: <Widget>[
                    Row(
                      //row contain name and code
                      children: <Widget>[
                        semibold.reg17(
                            text: name, color: colors.contactNameColor),
                        Gap(5.w),
                        if (code != null && editButton == false)
                          medium.reg14(text: code!)
                      ],
                    ),
                    if (role != null && editButton == false) ...[
                      Gap(9.h),
                      medium.reg14(text: role!),
                    ],
                    if (date != null &&
                        editButton == false &&
                        role == null) ...[Gap(9.h), medium.reg14(text: date!)]
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
            else if (date != null && role != null)
              medium.reg14(text: date!),
            if (condition != null && editButton == false) condition!
          ],
        ),
        Gap(20.h),
        if (name2 != null)
          Container(
            height: 72.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: colors.primaryGreenColor.withOpacity(0.08)),
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
                            images.contactTwo,
                            height: 12.58.h,
                            width: 10.36.w,
                            color: colors.primaryGreenColor,
                          ),
                          Gap(8.35.w),
                          medium.reg14(
                              text: name2 ?? '',
                              color: colors.primaryGreenColor)
                        ],
                      ),
                      if (phoneNo != null)
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              images.phone,
                              height: 11.76.h,
                              width: 11.76.w,
                              color: colors.primaryGreenColor,
                            ),
                            Gap(6.23.w),
                            medium.reg14(
                                text: phoneNo ?? '',
                                color: colors.primaryGreenColor)
                          ],
                        )
                    ],
                  ),
                  Gap(6.h),
                  if(email!=null)Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        images.email,
                        height: 10.88.h,
                        width: 13.47.w,
                      ),
                      Gap(8.w),
                      medium.reg14(
                          text: email ?? '', color: colors.primaryGreenColor)
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
                border: Border.all(color: colors.primaryGreenColor),
                borderRadius: BorderRadius.circular(52.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(images.phone,
                    height: 14.66.h,
                    width: 14.66.w,
                    color: colors.primaryGreenColor),
                Gap(10.w),
                semibold.reg16(text: 'Call', color: colors.primaryGreenColor)
              ],
            ),
          )
      ],
    );
  }
}
