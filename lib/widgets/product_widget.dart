import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:easy_reo_fonts/easy_reo_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

KStyles regular =
    KStyles(fontType: FontType.ttfFonts, fontFamily: 'GilroyReguar');
KStyles semibold =
    KStyles(fontType: FontType.ttfFonts, fontFamily: 'GilroySemibold');
KStyles medium =
    KStyles(fontType: FontType.ttfFonts, fontFamily: 'GilroyMedium');

class Productdetails extends StatefulWidget {
  final String productName;
  final String category;
  final String price;
  final bool? availablity;
  const Productdetails({
    super.key,
    required this.productName,
    required this.category,
    required this.price,
    this.availablity = true,
  });

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w),
              color: const Color(0xFFD9D9D9),
            ),
            height: 181.94.h,
            width: 181.49.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.h, horizontal: 8.43.w),
                    child: Checkboxwidget(
                        backgroundcolour: Colors.white,
                        colorafterclicked: Colors.black,
                        valuechanged: (isselected) {}))
              ],
            ),
          ),
          Gap(12.h),
          semibold.reg16(
              text: widget.productName, color: const Color(0xFF000000)),
          Gap(8.h),
          medium.reg14(
              text: widget.category, color: const Color(0xFF5B5B5B)),
          Gap(8.h),
          semibold.reg16(text:'\$ ${widget.price}', color: const Color(0xFF000000))
        ],
      ),
      if (widget.availablity == false)
        Container(
          height: 266.94,
          width: 181.49,
          color: Colors.white70,
        )
    ]);
  }
}
