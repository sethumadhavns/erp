// ignore_for_file: unnecessary_import

import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';

import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OtherDetailstwo extends StatefulWidget {
  const OtherDetailstwo({super.key});

  @override
  State<OtherDetailstwo> createState() => _OtherDetailstwoState();
}

class _OtherDetailstwoState extends State<OtherDetailstwo> {
  @override
  Widget build(BuildContext context) {
    return Accordion(
      contentBorderColor: Colors.white,
      contentHorizontalPadding: 0,
      contentVerticalPadding: 35.w,
      children: [
        AccordionSection(
          isOpen: true,
          headerBackgroundColor: Colors.white,
          header: Row(children: [
            medium.reg20(
                text: 'Payment Info', color: colors.primaryGreenColour),
            Gap(184.91.w),
            SvgPicture.asset(
              images.dropDownArrow,
              height: 6.04.h,
              width: 12.09.h,
              color: colors.primaryGreenColour,
            )
          ]),
          content: const Align(
            alignment: Alignment.topLeft,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFieldAndHeading(
                    title: 'Country',
                    dropDownEntries: [],
                  ),
                  TextFieldAndHeading(
                    title: 'Status',
                    dropDownEntries: [],
                  ),
                  TextFieldAndHeading(
                    title: 'City',
                    dropDownEntries: [],
                  ),
                  TextFieldAndHeading(
                    title: 'Address',
                  ),
                  TextFieldAndHeading(
                    title: 'Remarks',
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
