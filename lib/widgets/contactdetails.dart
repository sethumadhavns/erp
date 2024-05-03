// ignore_for_file: prefer_const_constructors

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
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
  final Widget? condition;
  final bool? call;
  final bool? whatsapp;
  final String? role;
  final String? validityDate;
  final Function(int)? selectedButton;
  final bool? whatsAppDisable;

  ///Widget is used in lead page to show details of the contacts in leads.
  ///[name],[email],[landPhone] is set as required and others are displayed only when there is a value in arguments.
  ///[call],[whatsapp] are bool and set to false as default,it shows the calling and whatsapp button when set to true.
  ///[condition] are used to show chips which shows the contact conditions like new,followUpRequired etc.
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
      this.whatsAppDisable = false,
      super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  int? buttonValue = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16.w)),
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
                      Container(
                        //icon
                        height: 44.35.h,
                        width: 44.35.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors.imageIconBackgroundColor),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              images.contactIcon,
                              height: 15.51.h,
                              width: 12.77.w,
                            )),
                      ),
                      Gap(17.w),
                      Column(
                        //name and date and role
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          semibold.reg17(
                              text: widget.name,
                              color: colors.contactNameColor),
                          if (widget.date != null || widget.date != null) ...[
                            Gap(5.h),
                            medium.reg14(
                                text: widget.date ?? widget.role ?? '',
                                color: colors.contactDateColor)
                          ],
                        ],
                      ),
                    ],
                  ),
                  widget.condition!,
                ],
              ),
              Gap(26.4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    //email
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
                  Row(
                    //phone
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
              if (widget.whatsapp == true && widget.call == true) ...[
                Gap(18.h),
                Row(
                  //call and whatsapp
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonValue = 1;

                              widget.selectedButton!(buttonValue!);
                            });
                          },
                          child: Container(
                            height: 46.66.h,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: colors.primaryGreenColor),
                              borderRadius: BorderRadius.circular(52.w),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(images.phone,
                                    height: 14.66.h,
                                    width: 14.66.w,
                                    color: colors.primaryGreenColor),
                                Gap(10.w),
                                semibold.reg16(
                                    text: 'Call',
                                    color: colors.primaryGreenColor)
                              ],
                            ),
                          )),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: Stack(children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                buttonValue = 2;
                                widget.selectedButton!(buttonValue!);
                              });
                            },
                            child: Container(
                              height: 46.66.h,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: colors.primaryGreenColor),
                                borderRadius: BorderRadius.circular(52.w),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(images.whatsapp,
                                      height: 14.66.h,
                                      width: 14.66.w,
                                      color: colors.primaryGreenColor),
                                  Gap(10.w),
                                  semibold.reg16(
                                      text: 'Whatsapp',
                                      color: colors.primaryGreenColor)
                                ],
                              ),
                            )),
                        if (widget.whatsAppDisable == true)
                          Container(
                            height: 46.66.h,
                            color: Colors.white70,
                          )
                      ]),
                    )
                  ],
                ),
              ],
              Gap(18.42.h),
              if (widget.remarks != null)
                Column(
                  children: <Widget>[
                    medium.reg16(
                        text: 'Remarks', color: colors.contactRemarkColor),
                    Gap(13.h),
                    medium.reg16(text: widget.remarks ?? ''),
                  ],
                ),
              if (widget.call == true && widget.whatsapp == false) Gap(18.h),
              if (widget.call == true && widget.whatsapp == false)
                GestureDetector(
                    //call only
                    onTap: () {
                      setState(() {
                        buttonValue = 1;
                        widget.selectedButton!(buttonValue!);
                      });
                    },
                    child: Container(
                      height: 46.66.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: colors.primaryGreenColor),
                        borderRadius: BorderRadius.circular(52.w),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(images.phone,
                              height: 14.66.h,
                              width: 14.66.w,
                              color: colors.primaryGreenColor),
                          Gap(10.w),
                          semibold.reg16(
                              text: 'Call', color: colors.primaryGreenColor)
                        ],
                      ),
                    ))
            ]),
      ),
    );
  }
}
