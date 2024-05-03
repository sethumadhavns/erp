import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/country_code_dropdown.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class OtherDetails extends StatefulWidget {
  ///For Lead page when adding lead,other details of lead is used.
  ///contains [DropDown] and [CountryDropDown] with entries.
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
              header: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  medium.reg20(
                      text: 'Other Details', color: colors.primaryGreenColor),
                 
                  SvgPicture.asset(
                    images.dropDownArrow,
                    height: 6.04.h,
                    width: 12.09.h,
                    color: colors.primaryGreenColor,
                  )
                ],
              ),
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
                      title: 'State',
                      dropDownEntries: [],
                    ),
                    DropDown(
                      title: 'Location',
                      dropDownEntries: [],
                    ),
                    CountryDropDown(
                      countryCode: [],
                      title: 'Mobile No',
                    ),
                    CountryDropDown(
                      countryCode: [],
                      title: 'Whatsapp No',
                    ),
                    DropDown(
                      title: 'Website',
                      dropDownEntries: [],
                    ),
                    DropDown(
                      title: 'Status',
                      dropDownEntries: [],
                    ),
                    DropDown(
                      title: 'Remarks',
                      dropDownEntries: [],
                    ),
                  ],
                ),
              ))
        ]);
  }
}
