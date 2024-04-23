import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Enquiryaccounts extends StatelessWidget {
  final String name;
  final String? code;
  final String? role;
  final String? date;
  final String? name2;
  final String? email;
  final String? phoneno;
  final bool? editbutton;
  final bool? call;
  final String? validitydate;
 
final Contactconditions? condition;


  const Enquiryaccounts(
      {required this.name,
      this.code,
      this.role,
      this.date,
      this.name2,
      this.email,
      this.phoneno,
      this.editbutton = false,
      this.call = false,
      this.validitydate,
      
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
                        semibold.reg17(
                            text: name, color: const Color(0xFF1E1E1E)),
                        Gap(5.w),
                        if (code != null&&editbutton==false) medium.reg14(text: code!)
                      ],
                    ),
                    Gap(9.h),
                    if (role != null && editbutton == false)
                      medium.reg14(text: role!),
                    if (date != null && editbutton == false&&role==null)
                      medium.reg14(text: date!)
                  ],
                )
              ],
            ),
            if (editbutton == true)
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/editicon.png',
                    height: 17.58.h,
                    width: 17.58.w,
                  ))
                  else 
                  if(date!=null&&role!=null)
                   medium.reg14(text: date!),
                   if(condition!=null&&editbutton==false)
                   conditions(condition,validitydate)
            
          ],
        ),
        Gap(20.h),
        if (name2 != null)
          Container(
            height: 72.h,
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
                          medium.reg14(
                              text: name2 ?? '', color: const Color(0xFF367B86))
                        ],
                      ),
                      if (phoneno != null)
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/phoneicon.png',
                              height: 11.76.h,
                              width: 11.76.w,
                              color: const Color(0xFF367B86),
                            ),
                            Gap(6.23.w),
                            medium.reg14(
                                text: phoneno ?? '',
                                color: const Color(0xFF367B86))
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
                      medium.reg14(
                          text: email ?? '', color: const Color(0xFF367B86))
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
                border: Border.all(color: const Color(0xFF367B86)),
                borderRadius: BorderRadius.circular(52.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/phoneicon.png',
                    height: 14.66.h,
                    width: 14.66.w,
                    color: const Color(0xFF367B86)),
                Gap(10.w),
                semibold.reg16(text: 'Call', color: const Color(0xFF367B86))
              ],
            ),
          )
      ],
    );
  }
}
