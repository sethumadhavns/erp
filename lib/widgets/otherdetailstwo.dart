// ignore_for_file: unnecessary_import

import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';

import 'package:erp_widget_packages/widgets/product_details.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OtherDetailsTwo extends StatefulWidget {
  ///In contact page ,when adding contact other details of contact is used.
  ///[DropDown] and [CountryCodeDropDown] is used with entries
  const OtherDetailsTwo({super.key});

  @override
  State<OtherDetailsTwo> createState() => _OtherDetailsTwoState();
}

class _OtherDetailsTwoState extends State<OtherDetailsTwo> {
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
                text: 'Payment Info', color: colors.primaryGreenColor),
            Gap(184.91.w),
            SvgPicture.asset(
              images.dropDownArrow,
              height: 6.04.h,
              width: 12.09.h,
              color: colors.primaryGreenColor,
            )
          ]),
          content: const Align(
            alignment: Alignment.topLeft,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DropDown(
                    title: 'Country',
                    dropDownEntries: [],
                  ),
                  DropDown(
                    title: 'Status',
                    dropDownEntries: [],
                  ),
                  DropDown(
                    title: 'City',
                    dropDownEntries: [],
                  ),
                  DropDown(
                    title: 'Address',
                  ),
                  DropDown(
                    title: 'Remarks',
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
