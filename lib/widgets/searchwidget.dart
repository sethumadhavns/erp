import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 15.w),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              prefixIcon:SvgPicture.asset(
                  'assets/images/search.svg',
                  height: 18.95.h,
                  width: 18.95.w,
                  color: const Color(0xFF757575),
                ),
              hintText: 'Search',
              hintStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'GilroyMedium',
                  color: const Color(0xFF939393)),border: InputBorder.none),
        )
        //  Row(
        //   children: <Widget>[
        //     Image.asset(
        //       'assets/images/searchicon.png',
        //       height: 18.95.h,
        //       width: 18.95.w,
        //     ),
        //     Gap(6.w),
        //     medium.reg18(text: 'Search', color: const Color(0xFF939393))
        //   ],
        // ),
        );
  }
}
