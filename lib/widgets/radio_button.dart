import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class RadioButton extends StatefulWidget {
  final String buttonTitle;
  final String optionNo;
  final ValueChanged<String> onChanged;
 final String? groupValue;
 ///Radio Button with a [buttonTitle] to its left.
 ///[optionNo] is given to each [RadioButton] you are using.
 ///IN [onChanged] the [value] it return should assign to a variable and that value should be assign to [groupValue]
  
  const RadioButton({
  required this.buttonTitle,required this.optionNo,
   required this.onChanged,
    required this.groupValue,
    super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio( materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          activeColor: colors.primaryGreenColor,
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
