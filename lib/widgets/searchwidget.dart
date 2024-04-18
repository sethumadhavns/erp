import 'package:erp_widget_packages/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Searchwidget extends StatelessWidget {
  const Searchwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:16.h ,horizontal:15.w ),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/searchicon.png',
            height: 18.95.h,
            width: 18.95.w,
          ),
          Gap(6.w),
          medium.reg18(text: 'Search', color: const Color(0xFF939393))
        ],
      ),
    );
  }
}
