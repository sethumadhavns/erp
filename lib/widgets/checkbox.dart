import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends StatefulWidget {
  final Color backGroundColour;
  final Color colorAfterClicked;
  final ValueChanged<bool> valueChanged;
  const CheckBoxWidget(
      {required this.backGroundColour,
      required this.colorAfterClicked,
      required this.valueChanged,
      super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
            widget.valueChanged(isClicked);
          });
        },
        child: Container(
            height: 24.06.h,
            width: 24.06.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.54),
              color: isClicked
                  ? widget.colorAfterClicked
                  : widget.backGroundColour,
              border: Border.all(width: 0.89.w, color: colors.checkBoxBorderColour),
            ),
            child: isClicked
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
