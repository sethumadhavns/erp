// ignore_for_file: prefer_const_constructors

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ContactDetails extends StatefulWidget {
  final String name;
  final String? date;
  final String email;
  final String landPhone;
  final String? mobileNo;
  final String? location;
  final String? remarks;
  final ContactConditions? condition;
  final bool? call;
  final bool? whatsapp;
  final String? role;
  final String? validityDate;
  final Function(int)? selectedButton;
  const ContactDetails(
      {required this.name,
      required this.email,
      required this.landPhone,
      this.date,
      this.condition,
      this.mobileNo,
      this.location,
      this.remarks,
      this.call = false,
      this.whatsapp = false,
      this.role,
      this.selectedButton,
      this.validityDate,

      super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  int? buttonvalue = -1;
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16.w)),
      
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(//icon
                        height: 44.35.h,
                        width: 44.35.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: colors.imageIconBackgroundColour),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              images.contactIcon,
                              height: 15.51.h,
                              width: 12.77.w,
                            )),
                      ),
                      Gap(17.w),
                      Column(//nameanddateandrole
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          semibold.reg17(
                              text: widget.name, color:colors.contactNameColor),
                          Gap(5.h),
                          medium.reg14(
                              text: widget.date ?? widget.role ?? '',
                              color: colors.contactDateColor)
                        ],
                      ),
                    ],
                  ),
                  conditions(widget.condition,widget.validityDate)//conditions
                ],
              ),
              Gap(26.4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(//email
                    children: <Widget>[
                      SvgPicture.asset(
                        images.email,
                        height: 11.8.h,
                        width: 14.61.w,
                      ),
                      Gap(8.w),
                      medium.reg16(text: widget.email)
                    ],
                  ),
                  Gap(74.59.w),
                  Row(//phone
                    children: <Widget>[
                       SvgPicture.asset(
                        images.phone,
                        height: 11.8.h,
                        width: 11.w,
                      ),
                      Gap(8.w),
                      medium.reg16(text: widget.landPhone)
                    ],
                  ),
                ],
              ),
              Gap(10.h),
              if (widget.mobileNo != null || widget.location != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (widget.mobileNo != null)
                      Row(
                        children: <Widget>[
                           SvgPicture.asset(
                            images.mobile,
                            height: 14.66.h,
                            width: 9.16.w,
                          ),
                          Gap(8.w),
                          medium.reg16(text: widget.mobileNo ?? '')
                        ],
                      ),
                    if (widget.location != null)
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            images.location,
                            height: 11.8.h,
                            width: 11.8.w,
                          ),
                          Gap(8.w),
                          medium.reg16(text: widget.location ?? '')
                        ],
                      ),
                  ],
                ),
              if (widget.whatsapp == true && widget.call == true)
              Gap(18.h),
              if (widget.whatsapp == true && widget.call == true)
                Row(//callandwhatsapp
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonvalue = 1;

                              widget.selectedButton!(buttonvalue!);
                            });
                          },
                          child: Container(
                            height: 46.66.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF367B86)),
                              borderRadius: BorderRadius.circular(52.w),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(images.phone,
                                    height: 14.66.h,
                                    width: 14.66.w,
                                    color: colors.primaryGreenColour),
                                Gap(10.w),
                                semibold.reg16(
                                    text: 'Call',
                                    color: colors.primaryGreenColour)
                              ],
                            ),
                          )),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonvalue = 2;
                              widget.selectedButton!(buttonvalue!);
                            });
                          },
                          child: Container(
                            height: 46.66.h,
                            decoration: BoxDecoration(
                              border: Border.all(color:colors.primaryGreenColour),
                              borderRadius: BorderRadius.circular(52.w),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              SvgPicture.asset(images.whatsapp,
                                    height: 14.66.h,
                                    width: 14.66.w,
                                    color: colors.primaryGreenColour),
                                Gap(10.w),
                                semibold.reg16(
                                    text: 'Whatsapp',
                                    color: colors.primaryGreenColour)
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              Gap(18.42.h),
              if (widget.remarks != null)
                Column(
                  children: <Widget>[
                    medium.reg16(text: 'Remarks', color:colors.contactRemarkColor),
                    Gap(13.h),
                    medium.reg16(text: widget.remarks ?? ''),
                  ],
                ),
                if (widget.call == true && widget.whatsapp == false)
                Gap(18.h),
              if (widget.call == true && widget.whatsapp == false)
                GestureDetector(//callonly
                    onTap: () {
                      setState(() {
                        buttonvalue = 1;
                        widget.selectedButton!(buttonvalue!);
                      });
                    },
                    child: Container(
                      height: 46.66.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: colors.primaryGreenColour),
                        borderRadius: BorderRadius.circular(52.w),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('assets/images/phoneicon.svg',
                              height: 14.66.h,
                              width: 14.66.w,
                              color: colors.primaryGreenColour),
                          Gap(10.w),
                          semibold.reg16(
                              text: 'Call', color: colors.primaryGreenColour)
                        ],
                      ),
                    ))
            ]),
      ),
    );
  }
}
