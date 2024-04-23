import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Addquatationproducts extends StatelessWidget {
  final String productname;
  final String price;
  final String noofpeace;
  final bool moreinfo;
  const Addquatationproducts(
      {required this.productname,
      required this.price,
      required this.noofpeace,
      this.moreinfo = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              medium.reg16(text: productname, color: const Color(0xFF161616)),
              Gap(12.h),
              medium.reg14(
                  text: '\$ $price/Peace', color: const Color(0xFF6F6F6F)),
              Gap(16.h),
              medium.reg16(
                  text: '$noofpeace Peace', color: const Color(0xFF121212))
            ],
          ),
          if (moreinfo)
            Column(
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: const Color(0xFF367B86).withOpacity(0.31)),
                      borderRadius: BorderRadius.circular(27.w)),
                  label: medium.reg14(
                      text: 'More Info', color: const Color(0xFF367B86)),
                  labelPadding: const EdgeInsets.all(0),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 17.w),
                ),
              ],
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/editicon.png',
                      height: 18.3.h,
                      width: 18.3.w,
                    ),
                    Gap(19.78.w),
                    Image.asset(
                      'assets/images/binicon.png',
                      height: 18.3.h,
                      width: 18.3.w,
                    )
                  ],
                ),
              ],
            )
        ],
      )
    ]);
  }
}
