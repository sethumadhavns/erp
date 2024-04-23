import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Textfieldandheading extends StatefulWidget {
  final String? title;
  final int? height;
  final String? hinttext;
  final List<String>? dropdownentries;
  const Textfieldandheading(
      {this.title,
      this.height = 54,
      this.hinttext,
      this.dropdownentries,
      super.key});

  @override
  State<Textfieldandheading> createState() => _TextfieldandheadingState();
}

class _TextfieldandheadingState extends State<Textfieldandheading> {
  TextEditingController text = TextEditingController();
  String? dropdownvalue;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> dropdownentries = [];
    if (widget.dropdownentries != null) {
      dropdownentries = widget.dropdownentries!.map((title) {
        return DropdownMenuItem<String>(
          value: title,
          child: Text(title),
        );
      }).toList();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        medium.reg18(text: widget.title ?? ''),
        if (widget.title != null) Gap(15.h),
        Container(
          height: widget.height!.h,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFC1C1C1)),
              borderRadius: BorderRadius.circular(16.w)),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w,top: 10.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (widget.hinttext != null)
                  Flexible(
                    child: TextField(
                      controller: text,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: widget.hinttext,
                          hintStyle: TextStyle(
                              color: const Color(0xFFA1A1A1),
                              fontFamily: 'GilroyRegular',
                              fontSize: 18.sp)),
                    ),
                  ),
                if (widget.hinttext == null)
                  medium.reg18(text: '-', color: const Color(0xFF909090)),
                Gap(10.w),
                if (widget.dropdownentries == null)
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  )),
                if (widget.dropdownentries != null)
                  Expanded(
                    child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        underline: Container(),
                        elevation: 0,
                        icon: Image.asset(
                          'assets/images/dropdownbutton.png',
                          height: 6.h,
                          width: 12.w,
                          color: const Color(0xFF303030),
                        ),
                        value: dropdownvalue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        },
                        items: dropdownentries),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
