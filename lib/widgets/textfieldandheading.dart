import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textfieldandheading extends StatefulWidget {
  const Textfieldandheading({super.key});

  @override
  State<Textfieldandheading> createState() => _TextfieldandheadingState();
}

class _TextfieldandheadingState extends State<Textfieldandheading> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                    height: 54.h,
                    
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFC1C1C1)),
                        borderRadius: BorderRadius.circular(16.w)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 20.w, bottom: 15.h),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: const Color(0xFFA1A1A1),
                                fontFamily: 'GilroyRegular',
                                fontSize: 18.sp)),
                      ),
                    ),
                  );
  }
}