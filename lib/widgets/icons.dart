import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsWidgets extends StatefulWidget {
  final String icon;
  final bool isSelected;
  final Function(String) onIconSelected;
///this icons is clickable.It changes color on clicked.
///[icon] will receive the string value of location of icon.
////[isSelected]use to change the colors when clicked.
///[onIconSelected] sends the icon which is clicked.
///the value passed when calling [onIconSelected] is used to compare the value with selectedIcon variable which is defined when calling the [IconsWidgets]
  const IconsWidgets(
      {required this.icon,
      required this.isSelected,
      required this.onIconSelected,
      super.key});

  @override
  State<IconsWidgets> createState() => _IconsWidgetsState();
}

class _IconsWidgetsState extends State<IconsWidgets> {
  
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
                :colors.defaultIconColor,
          ),
        ),
      ),
    );
  }
}
