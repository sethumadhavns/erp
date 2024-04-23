import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Clickableicons extends StatefulWidget {
  final String icon;
  final bool isselected;
  final Function(String) oniconselected;

  const Clickableicons(
      {required this.icon,
      required this.isselected,
      required this.oniconselected,
      super.key});

  @override
  State<Clickableicons> createState() => _ClickableiconsState();
}

class _ClickableiconsState extends State<Clickableicons> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.oniconselected(widget.icon);
        setState(() {
          widget.isselected!=true;
        });
       
      },
      child: Container(
        height: 58.h,
        width: 56.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.w),
            color: widget.isselected
                ? const Color(0xFF62C8A3).withOpacity(0.14)
                : Colors.transparent),
        child: Center(
          child: Image.asset(
            'assets/images/${widget.icon}.png',
            height: 27.75.h,
            width: 27.75.w,
            color: widget.isselected
                ? const Color(0xFF62C8A3)
                : const Color(0xFFB8C3C4),
          ),
        ),
      ),
    );
  }
}
