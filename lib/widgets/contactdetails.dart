// ignore_for_file: prefer_const_constructors

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Contactdetails extends StatefulWidget {
  final String name;
  final String? date;
  final String email;
  final String landphone;
  final String? mobileno;
  final String? location;
  final String? remarks;
  final Contactconditions? condition;
  final bool? call;
  final bool? whatsapp;
  final String? role;
  const Contactdetails(
      {required this.name,
      required this.email,
      required this.landphone,
      this.date,
      this.condition,
      this.mobileno,
      this.location,
      this.remarks,
      this.call = false,
      this.whatsapp = false,
      this.role,
      super.key});

  @override
  State<Contactdetails> createState() => _ContactdetailsState();
}

class _ContactdetailsState extends State<Contactdetails> {
  int? selectedbutton;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 35.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 44.35.h,
                        width: 44.35.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFE3E3E3)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/contacticon.png',
                              height: 15.51.h,
                              width: 12.77.w,
                            )),
                      ),
                      Gap(17.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          semibold.reg17(
                              text: widget.name, color: Color(0xFF1E1E1E)),
                          Gap(5.h),
                          medium.reg14(
                              text: widget.date ?? widget.role ?? '',
                              color: Color(0xFF5D5D5D))
                        ],
                      ),
                    ],
                  ),
                  conditions(widget.condition)
                ],
              ),
              Gap(26.4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/emailicon.png',
                        height: 11.8.h,
                        width: 14.61.w,
                      ),
                      Gap(8.w),
                      medium.reg16(text: widget.email)
                    ],
                  ),
                  Gap(74.59.w),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/phoneicon.png',
                        height: 11.8.h,
                        width: 11.w,
                      ),
                      Gap(8.w),
                      medium.reg16(text: widget.landphone)
                    ],
                  ),
                ],
              ),
              Gap(10.h),
              if (widget.mobileno != null || widget.location != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (widget.mobileno != null)
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/mobileicon.png',
                            height: 14.66.h,
                            width: 9.16.w,
                          ),
                          Gap(8.w),
                          medium.reg16(text: widget.mobileno ?? '')
                        ],
                      ),
                    if (widget.location != null)
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/locationicon.png',
                            height: 11.8.h,
                            width: 11.8.w,
                          ),
                          Gap(8.w),
                          medium.reg16(text: widget.location ?? '')
                        ],
                      ),
                  ],
                ),
              Gap(18.h),
              if (widget.whatsapp == true && widget.call == true)
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedbutton == 1) {
                            selectedbutton = null; 
                          } else {
                            selectedbutton = 1;
                          }
                        });
                      },
                      child:Expanded(
                        child: Container(
                            height: 46.66.h,
                            
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF367B86)),
                              borderRadius: BorderRadius.circular(52.w),
                            ),
                            child: Row(children: <Widget>[ Row(
                                children: <Widget>[
                                  Image.asset('assets/images/whatsapp.png',
                                      height: 14.66.h,
                                      width: 14.66.w,
                                      color: selectedbutton == 2
                                          ? Colors.white
                                          : Color(0xFF367B86)),
                                  Gap(10.w),
                                  semibold.reg16(
                                      text: 'Whatsapp',
                                      color: selectedbutton == 2
                                          ? Colors.white
                                          : const Color(0xFF367B86))
                                ],
                              )],),
                          ),
                      )
                    ),
                    Gap(10.w),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedbutton == 2) {
                              selectedbutton = null;
                            } else {
                              selectedbutton = 2;
                            }
                          });
                        },
                        child: Flexible(
                          child: Container(
                            height: 46.66.h,
                           
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF367B86)),
                              borderRadius: BorderRadius.circular(52.w),
                            ),
                            child: Row(children: <Widget>[ Row(
                                children: <Widget>[
                                  Image.asset('assets/images/whatsapp.png',
                                      height: 14.66.h,
                                      width: 14.66.w,
                                      color: selectedbutton == 2
                                          ? Colors.white
                                          : Color(0xFF367B86)),
                                  Gap(10.w),
                                  semibold.reg16(
                                      text: 'Whatsapp',
                                      color: selectedbutton == 2
                                          ? Colors.white
                                          : const Color(0xFF367B86))
                                ],
                              )],),
                          ),
                        )
                        // Chip(
                        //     backgroundColor: selectedbutton == 2
                        //         ? Color(0xFF367B86)
                        //         : Colors.white,
                        //     labelPadding: EdgeInsets.all(0),
                        //     padding: EdgeInsets.symmetric(
                        //         vertical: 17.h, horizontal: 34.w),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(52.w),
                        //         side: BorderSide(color: Color(0xFF367B86))),
                        //     label: Row(
                        //       children: <Widget>[
                        //         Image.asset('assets/images/whatsapp.png',
                        //             height: 14.66.h,
                        //             width: 14.66.w,
                        //             color: selectedbutton == 2
                        //                 ? Colors.white
                        //                 : Color(0xFF367B86)),
                        //         Gap(10.w),
                        //         semibold.reg16(
                        //             text: 'Whatsapp',
                        //             color: selectedbutton == 2
                        //                 ? Colors.white
                        //                 : const Color(0xFF367B86))
                        //       ],
                        //     )),

                        )
                  ],
                ),
              Gap(26.h),
              if (widget.remarks != null)
                Column(
                  children: <Widget>[
                    medium.reg16(text: 'Remarks', color: Color(0xFF7C7C7C)),
                    Gap(13.h),
                    medium.reg16(text: widget.remarks ?? ''),
                  ],
                ),
              if (widget.call == true && widget.whatsapp == false)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedbutton == 3) {
                        selectedbutton = null;
                      } else {
                        selectedbutton = 3;
                      }
                    });
                  },
                  child: Chip(
                      backgroundColor: selectedbutton == 3
                          ? Color(0xFF367B86)
                          : Colors.white,
                      side: BorderSide(width: 1, color: Color(0xFF367B86)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        52.w,
                      )),
                      padding: EdgeInsets.symmetric(
                          vertical: 17.83.h, horizontal: 148.17.w),
                      labelPadding: EdgeInsets.all(0),
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/phoneicon.png',
                            height: 14.66.h,
                            width: 14.66.w,
                            color: selectedbutton == 3
                                ? Colors.white
                                : Color(0xFF367B86),
                          ),
                          Gap(10.w),
                          semibold.reg16(
                              text: 'Call',
                              color: selectedbutton == 3
                                  ? Colors.white
                                  : const Color(0xFF367B86))
                        ],
                      )),
                )
            ]),
      ),
    );
  }
}
