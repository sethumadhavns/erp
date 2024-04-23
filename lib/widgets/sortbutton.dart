import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sortbutton extends StatelessWidget {
  const Sortbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: SvgPicture.asset('assets/images/sort.svg',height: 24.h,width: 24.w,)
    );
  }
}