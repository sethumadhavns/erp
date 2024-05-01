import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PopupButton extends StatefulWidget {
  final String category;
  ///contains a button chip,when its clicked a cross icon will be shown.
  const PopupButton({super.key,
  required this.category});

  @override
  State<PopupButton> createState() => _PopupButtonState();
}

class _PopupButtonState extends State<PopupButton> {
  bool isButtonClicked = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isButtonClicked = !isButtonClicked;
        });
      },
      child: Container(
        height: 41.h,
        width: isButtonClicked == false ? 141.w : 121.w,
        decoration: BoxDecoration(
            border: isButtonClicked == false
                ? Border.all(color:colors.popUpButtonBorder )
                : Border.all(color: colors.primaryGreenColor),
            borderRadius: BorderRadius.circular(31.w)),
        child: isButtonClicked == false
            ? Center(
                child: medium.reg16(
                    text: widget.category, color: colors.primaryGreenColor))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  medium.reg16(
                      text: widget.category, color:colors.primaryGreenColor),
                  Gap(5.w),
                  Icon(
                    Icons.close,
                    size: 15.w,
                    color:colors.primaryGreenColor,
                  )
                ],
              ),
      ),
    );
  }
}
