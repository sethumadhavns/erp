import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class RadioButtonWidget extends StatefulWidget {
  final String buttonTitle;
  final String optionNo;
  final ValueChanged<String> onChanged;
 final String? groupValue;
  
  const RadioButtonWidget({
  required this.buttonTitle,required this.optionNo,
   required this.onChanged,
    required this.groupValue,
    super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio( materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          activeColor: colors.primaryGreenColour,
          value: widget.optionNo,
          groupValue:  widget.groupValue,
          onChanged: (String? value) {
           if(value!=null){
            widget.onChanged(value);
           }
          },
        ),Gap(10.w),
        medium.reg16(text: widget.buttonTitle, color:colors.radioButtonTitleColor )
      ],
    );
  }
}
