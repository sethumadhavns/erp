import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';

import 'package:erp_widget_packages/widgets/radiobutton.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PurposeDetails extends StatefulWidget {
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
              header: Row(children: [
                medium.reg20(
                    text: 'Purpose Details', color: colors.primaryGreenColour),
                Gap(184.91.w),
                 Icon(Icons.arrow_drop_down, color:colors.primaryGreenColour),
              ]),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const TextFieldAndHeading(title: 'Lead Source',dropDownEntries: [],),
                      Gap(10.w),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 47.14.h,
                          width: 47.14.w,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color:colors.primaryGreenColour,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xFFE5E5E5),
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(20.h),
                  medium.reg18(
                      text: 'Lead Purpose', color: const Color(0xFF474747)),
                  Gap(23.h),
                  Row(
                    children: <Widget>[
                      RadioButtonWidget(
                        buttonTitle: 'Product',
                        optionNo: 'option 1',
                        onChanged: (String? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                        groupValue: selectedOption,
                      ),
                      Gap(30.w),
                      RadioButtonWidget(
                        buttonTitle: 'Service',
                        optionNo: 'option 2',
                        onChanged: (String? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                        groupValue: selectedOption,
                      ),
                      Gap(30.w),
                      RadioButtonWidget(
                        buttonTitle: 'Others',
                        optionNo: 'option 3',
                        onChanged: (String? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                        groupValue: selectedOption,
                      ),
                    ],
                  ),
                  Gap(28.w),
                  const TextFieldAndHeading(title: 'Service',dropDownEntries: [],)
                ],
              ))
        ]);
  }
}
