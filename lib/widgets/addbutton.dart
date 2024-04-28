import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Addbutton extends StatelessWidget {
  const Addbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Container(
          height: 47.14.h,
          width: 47.14.w,
          decoration: const BoxDecoration(color: Color(0xFF367B86),shape: BoxShape.circle),
          child: Center(child: SvgPicture.asset('assets/images/add.svg',height: 17.05.h,width: 17.05.w,)),
        ));
  }
}
