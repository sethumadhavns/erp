import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkboxwidget extends StatefulWidget {
  final Color backgroundcolour;
  final Color colorafterclicked;
  final ValueChanged<bool> valuechanged;
  const Checkboxwidget(
      {required this.backgroundcolour,
      required this.colorafterclicked,
      required this.valuechanged,
      super.key});

  @override
  State<Checkboxwidget> createState() => _CheckboxwidgetState();
}

class _CheckboxwidgetState extends State<Checkboxwidget> {
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isclicked = !isclicked;
            widget.valuechanged(isclicked);
          });
        },
        child: Container(
            height: 24.06.h,
            width: 24.06.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.54),
              color: isclicked
                  ? widget.colorafterclicked
                  : widget.backgroundcolour,
              border: Border.all(width: 0.89.w, color: const Color(0xFF898989)),
            ),
            child: isclicked
                ? SizedBox(
                    height: 8.89.h,
                    width: 13.33.w,
                    child: const Icon(
                      Icons.check,
                      size: 17,
                      color: Colors.white,
                    ),
                  )
                : null));
  }
}
