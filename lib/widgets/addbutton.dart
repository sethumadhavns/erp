import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addbutton extends StatelessWidget {
  const Addbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.6.h,
      width: 54.6.w,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xFF62C8A3)),
          child: const Icon(Icons.add,size: 35,color: Colors.white,)
    );
  }
}
