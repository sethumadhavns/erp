import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectangleButtons extends StatelessWidget {
  final String name;
  const RectangleButtons({required this.name,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: double.infinity),
      
      height: 55.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.w), color: colors.rectangularButtonColor),
         child: Center(child: semibold.reg18(text: name,color: colors.rectangularButtonTextColor))
    );
  }
}
