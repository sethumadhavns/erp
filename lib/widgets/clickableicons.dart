import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickableIcons extends StatefulWidget {
  final String icon;
  final bool isSelected;
  final Function(String) onIconSelected;

  const ClickableIcons(
      {required this.icon,
      required this.isSelected,
      required this.onIconSelected,
      super.key});

  @override
  State<ClickableIcons> createState() => _ClickableIconsState();
}

class _ClickableIconsState extends State<ClickableIcons> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onIconSelected(widget.icon);
        setState(() {
          widget.isSelected!=true;
        });
       
      },
      child: Container(
        height: 58.h,
        width: 56.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.w),
            color: widget.isSelected
                ?colors.clickableIconColor.withOpacity(0.14)
                : Colors.transparent),
        child: Center(
          child: SvgPicture.asset(
            widget.icon,
            height: 27.75.h,
            width: 27.75.w,
            color: widget.isSelected
                ?colors.clickableIconColor
                :colors.defaultclickableIconColor,
          ),
        ),
      ),
    );
  }
}
