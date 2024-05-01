import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';

import 'package:erp_widget_packages/widgets/radio_button.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PurposeDetails extends StatefulWidget {
  ///contains[DropDown],[CountryDropDown],and [AddButton]
  ///For getting purpose details in lead page
  const PurposeDetails({super.key});

  @override
  State<PurposeDetails> createState() => _PurposeDetailsState();
}

class _PurposeDetailsState extends State<PurposeDetails> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Accordion(
        contentHorizontalPadding: 0,
        contentVerticalPadding: 35.w,
        contentBorderColor: Colors.white,
        headerBackgroundColor: Colors.white,
        headerBorderColorOpened: Colors.white,
        children: [
          AccordionSection(
              isOpen: true,
              header: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    medium.reg20(
                        text: 'Purpose Details',
                        color: colors.primaryGreenColor),
                    Icon(Icons.arrow_drop_down,
                        color: colors.primaryGreenColor),
                  ]),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      const Expanded(
                          child: DropDown(
                        title: 'Lead Source',
                        dropDownEntries: [],
                      )),
                      Gap(10.w),
                      const AddButton()
                    ],
                  ),
                  Gap(20.h),
                  medium.reg18(
                      text: 'Lead Purpose', color: colors.headingTextColor),
                  Gap(23.h),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: RadioButton(
                          buttonTitle: 'Product',
                          optionNo: 'option 1',
                          onChanged: (String? value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                          groupValue: selectedOption,
                        ),
                      ),
                      Gap(30.w),
                      Flexible(
                        child: RadioButton(
                          buttonTitle: 'Service',
                          optionNo: 'option 2',
                          onChanged: (String? value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                          groupValue: selectedOption,
                        ),
                      ),
                      Gap(30.w),
                      Flexible(
                        child: RadioButton(
                          buttonTitle: 'Others',
                          optionNo: 'option 3',
                          onChanged: (String? value) {
                            setState(() {
                              selectedOption = value;
                            });
                          },
                          groupValue: selectedOption,
                        ),
                      ),
                    ],
                  ),
                  Gap(28.h),
                  const DropDown(
                    title: 'Service',
                    dropDownEntries: [],
                  )
                ],
              ))
        ]);
  }
}
