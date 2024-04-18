import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Enquiryaccounts extends StatelessWidget {
  final String name;
  final String? code;
  final String? role;
  final String? date;
  final String name2;
  final String email;
  final String phoneno;
  final bool? editicon;
  const Enquiryaccounts(
      {required this.name,
         this.code,
         this.role,
         this.date,
      required this.name2,
      required this.email,
      required this.phoneno,
      this.editicon=true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355.w,
      child: Column(
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
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFE3E3E3)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/contacticon.png',
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
                          semibold.reg17(text: name, color: const Color(0xFF1E1E1E)),
                          Gap(10.w),
                          if (editicon != true) medium.reg14(text: code!),
                        ],
                      ),
                      Gap(9.h),
                      if (editicon != true) medium.reg14(text: role!)
                    ],
                  )
                ],
              ),
              editicon != true
                  ? medium.reg12(text: date!, color: const Color(0xFF323232))
                  : IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/editicon.png',
                        height: 17.58.h,
                        width: 17.58.w,
                      ))
            ],
          ),
          Gap(20.h),
          Container(
            height: 72.h,
            width: 355.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: const Color(0xFF367B86).withOpacity(0.08)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/contacticon.png',
                            height: 12.58.h,
                            width: 10.36.w,
                            color: const Color(0xFF367B86),
                          ),
                          Gap(8.35.w),
                          medium.reg14(text: name2, color: const Color(0xFF367B86))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/phoneicon.png',
                            height: 11.76.h,
                            width: 11.76.w,
                            color: const Color(0xFF367B86),
                          ),
                          Gap(6.23.w),
                          medium.reg14(text: phoneno, color: const Color(0xFF367B86))
                        ],
                      )
                    ],
                  ),
                  Gap(6.h),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/emailicon.png',
                        height: 10.88.h,
                        width: 13.47.w,
                      ),
                      Gap(8.w),
                      medium.reg14(text: email, color: const Color(0xFF367B86))
                    ],
                  )
                ],
              ),
            ),
          ),
          Gap(20.h),
          if(editicon==true) SizedBox(
            width: 355.w,
            child: Chip(
                backgroundColor: Colors.white,
                side: const BorderSide(width: 1, color: Color(0xFF367B86)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  52.w,
                )),
                padding: EdgeInsets.symmetric(
                    vertical: 17.83.h, horizontal: 148.17.w),
                labelPadding: const EdgeInsets.all(0),
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/phoneicon.png',
                      height: 14.66.h,
                      width: 14.66.w,
                      color: const Color(0xFF367B86),
                    ),
                    Gap(10.w),
                    semibold.reg16(text: 'Call', color: const Color(0xFF367B86))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
