import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Productoverview extends StatefulWidget {
  final String mainfield;
  final List<String> subfield;
  final List<String> imagepath;
  const Productoverview(
      {required this.mainfield,
      required this.subfield,
      required this.imagepath,
      super.key});

  @override
  State<Productoverview> createState() => _ProductoverviewState();
}

class _ProductoverviewState extends State<Productoverview> {
  @override
  Widget build(BuildContext context) {
    List<AccordionSection> accordionSections = widget.subfield.map((title) {
      int index = widget.subfield.indexOf(title);
      return buildAccordionSection(title, widget.imagepath[index]);
    }).toList();

    return Accordion(
      contentHorizontalPadding: 0,
      contentVerticalPadding: 0,
      paddingListBottom: 0,
      openAndCloseAnimation: false,
      paddingListTop: 0,
      children: [
        AccordionSection(
          isOpen: true,
          contentBorderColor: Colors.white,
          headerBorderRadius: 16.w,
          headerPadding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
          headerBackgroundColor: Colors.white,
          headerBackgroundColorOpened:
              const Color(0xFF367B86).withOpacity(0.08),
          rightIcon: null,
          header: Row(
            children: [
              medium.reg18(
                  text: widget.mainfield, color: const Color(0xFF367B86)),
              Gap(289.w),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
          content: Container(
            color: Colors.blue,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(alignment: Alignment.topLeft,
                    child: Accordion(
                        contentBorderColor: Colors.white,
                        children: accordionSections),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  AccordionSection buildAccordionSection(String title, String imagepath) {
    return AccordionSection(
      rightIcon: Icon(Icons.keyboard_arrow_down,
          color: const Color(0xFF848484), size: 25.w),
      headerBackgroundColor: Colors.white,
      headerBorderRadius: 16.w,
      headerPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      header: medium.reg18(text: title, color: const Color(0xFF848484)),
      content: Image.asset(imagepath),
    );
  }
}
