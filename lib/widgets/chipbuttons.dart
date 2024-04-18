import 'package:erp_widget_packages/erp_widget_packages.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class Chipbuttons extends StatefulWidget {
  final List<String> chipnames;
  final Function(int) buttonselected ;
  const Chipbuttons({required this.chipnames,required this.buttonselected, super.key});

  @override
  State<Chipbuttons> createState() => _ChipbuttonsState();
}

class _ChipbuttonsState extends State<Chipbuttons> {
  int? selectedbutton=-1;
  @override
  Widget build(BuildContext context) {

    List<Widget> chips = widget.chipnames.map((title) {
      int index = widget.chipnames.indexOf(title);
      return GestureDetector(onTap: (){
        setState(() {
          selectedbutton=index;
        });
        widget.buttonselected(selectedbutton!);
        
      },
        child: Chip(backgroundColor: selectedbutton==index?Colors.black:Colors.white,
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29.w),
                side: const BorderSide(color: Color(0xFFCFD9DB))),
            label: medium.reg18(text: title, color:selectedbutton==index?Colors.white: Colors.black),
            padding: EdgeInsets.symmetric(vertical:17.h ,horizontal:25.w),
          
            labelPadding:   const EdgeInsets.all(0),
            
          ),
      );
    }).toList();

    return Wrap(spacing: 12.w,
      children:chips 
        
      
      );
     

    
  }
}
