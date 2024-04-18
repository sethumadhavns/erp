import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Dropdownwidgetandtitle extends StatefulWidget {
  final int heightofbox;

  final String title;
  final List<String> dropdownentries;
  const Dropdownwidgetandtitle(
      {required this.heightofbox,
      required this.title,
      required this.dropdownentries,
      super.key});

  @override
  State<Dropdownwidgetandtitle> createState() => _DropdownwidgetandtitleState();
}

class _DropdownwidgetandtitleState extends State<Dropdownwidgetandtitle> {
  String? dropdownvalue;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> chips = widget.dropdownentries.map((title) {
      widget.dropdownentries.indexOf(title);
      return DropdownMenuItem<String>(
        value: title,
        child: Text(title),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        medium.reg18(text: widget.title, color: const Color(0xFF474747)),
        Gap(15.h),
        Container(
            height: widget.heightofbox.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.w),
                border: Border.all(width: 1, color: const Color(0xFFC1C1C1))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    size: 10.sp,
                    Icons.remove,
                    color: const Color(0xFF909090),
                  ),
                  DropdownButton<String>(
                      icon: Image.asset(
                        'assets/images/dropdownbutton.png',
                        height: 6.h,
                        width: 12.w,
                        color: const Color(0xFF303030),
                      ),
                      iconSize: 20.sp,
                      value: dropdownvalue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue;
                        });
                      },
                      items: chips),
                ],
              ),
            )),
      ],
    );
  }
}
