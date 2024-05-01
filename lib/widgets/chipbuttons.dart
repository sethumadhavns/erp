import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipButtons extends StatefulWidget {
  final List<String> chipNames;
  final Function(int) buttonSelected;

  ///Collection of chips in a row.
  ///The [chipNames] is a set as required and the function [buttonSelected] can have the actions which takes place after finding which chip is pressed.
  ///[buttonValue] contains the index of the current selected chip
  const ChipButtons(
      {required this.chipNames, required this.buttonSelected, super.key});

  @override
  State<ChipButtons> createState() => _ChipButtonsState();
}

class _ChipButtonsState extends State<ChipButtons> {
  int? buttonValue = -1;
  @override
  Widget build(BuildContext context) {
    List<Widget> chips = widget.chipNames.map((title) {
      int index = widget.chipNames.indexOf(title);
      return GestureDetector(
        onTap: () {
          setState(() {
            buttonValue = index;
          });
          widget.buttonSelected(buttonValue!);
        },
        child: Chip(
          backgroundColor: buttonValue == index ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(29.w),
              side: BorderSide(color: colors.chipButtonBorderColor)),
          label: medium.reg18(
              text: title,
              color: buttonValue == index
                  ? Colors.white
                  : colors.chipButtonsBackgroundColor),
          padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 25.w),
          labelPadding: const EdgeInsets.all(0),
        ),
      );
    }).toList();

    return Wrap(spacing: 12.w, children: chips);
  }
}
