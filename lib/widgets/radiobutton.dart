import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class Radiobuttonwidget extends StatefulWidget {
  final String buttontitle;
  final String optionno;
  final ValueChanged<String> onChanged;
 final String? groupValue;
  
  const Radiobuttonwidget({
  required this.buttontitle,required this.optionno,
   required this.onChanged,
    required this.groupValue,
    super.key});

  @override
  State<Radiobuttonwidget> createState() => _RadiobuttonwidgetState();
}

class _RadiobuttonwidgetState extends State<Radiobuttonwidget> {
  
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio( materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          activeColor: const Color(0xFF367B86),
          value: widget.optionno,
          groupValue:  widget.groupValue,
          onChanged: (String? value) {
           if(value!=null){
            widget.onChanged(value);
           }
          },
        ),Gap(10.w),
        medium.reg16(text: widget.buttontitle, color: const Color(0xFF0D0D0D))
      ],
    );
  }
}
