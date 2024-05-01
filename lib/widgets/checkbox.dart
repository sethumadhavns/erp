import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends StatefulWidget {
  final Color? backGroundColor;
  final Color? colorAfterClicked;
  final ValueChanged<bool>? valueChanged;
  ///This is checkbox where [backGroundColor] and [colorAfterClicked] is given a default value.Can be changed.
  ///[valueChanged] is used so you can track the [checkBoxState]
  const CheckBoxWidget(
      { this.backGroundColor=Colors.white,
       this.colorAfterClicked=const Color(0xFF367B86),
       required this.valueChanged,
      super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool checkBoxState = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            checkBoxState = !checkBoxState;
            widget.valueChanged!(checkBoxState);
          });
        },
        child: Container(
            height: 24.06.h,
            width: 24.06.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.54),
              color: checkBoxState
                  ? widget.colorAfterClicked
                  : widget.backGroundColor,
              border: Border.all(width: 0.89.w, color: colors.checkBoxBorderColor),
            ),
            child: checkBoxState
                ? SizedBox(
                    height: 8.89.h,
                    width: 13.33.w,
                    child:  Icon(
                      Icons.check,
                      size: 17.sp,
                      color: Colors.white,
                    ),
                  )
                : null));
  }
}
