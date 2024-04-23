import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Popupbutton extends StatefulWidget {
  final String category;
  const Popupbutton({super.key,
  required this.category});

  @override
  State<Popupbutton> createState() => _PopupbuttonState();
}

class _PopupbuttonState extends State<Popupbutton> {
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
                ? Border.all(color: const Color(0xFFC4D3D6))
                : Border.all(color: const Color(0xFF367B86)),
            borderRadius: BorderRadius.circular(31.w)),
        child: isButtonClicked == false
            ? Center(
                child: medium.reg16(
                    text: widget.category, color: const Color(0xFF367B86)))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  medium.reg16(
                      text: widget.category, color: const Color(0xFF367B86)),
                  Gap(5.w),
                  Icon(
                    Icons.close,
                    size: 15.w,
                    color: const Color(0xFF367B86),
                  )
                ],
              ),
      ),
    );
  }
}
