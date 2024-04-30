import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/textfieldwithcountrycode.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OtherDetails extends StatefulWidget {
  const OtherDetails({super.key});

  @override
  State<OtherDetails> createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  @override
  Widget build(BuildContext context) {
    return Accordion(
        contentHorizontalPadding: 0,
        contentVerticalPadding: 35.h,
        contentBorderColor: Colors.white,
        contentBackgroundColor: Colors.white,
        headerBackgroundColor: Colors.white,
        children: [
          AccordionSection(
              header: Row(
                children: <Widget>[
                  medium.reg20(
                      text: 'Payment Info', color: colors.primaryGreenColour),
                  Gap(184.91.w),
                  SvgPicture.asset(
                    images.dropDownArrow,
                    height: 6.04.h,
                    width: 12.09.h,
                    color: colors.primaryGreenColour,
                  )
                ],
              ),
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
                      title: 'State',
                      dropDownEntries: [],
                    ),
                    TextFieldAndHeading(
                      title: 'Location',
                      dropDownEntries: [],
                    ),
                    TextFieldWithCountryCode(
                      countryCode: [],
                      title: 'Mobile No',
                    ),
                    TextFieldWithCountryCode(
                      countryCode: [],
                      title: 'Whatsapp No',
                    ),
                    TextFieldAndHeading(
                      title: 'Website',
                      dropDownEntries: [],
                    ),
                    TextFieldAndHeading(
                      title: 'Status',
                      dropDownEntries: [],
                    ),
                    TextFieldAndHeading(
                      title: 'Remarks',
                      dropDownEntries: [],
                    ),
                  ],
                ),
              ))
        ]);
  }
}
