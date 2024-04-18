import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/dropdownboxwithtitle.dart';
import 'package:erp_widget_packages/widgets/radiobutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Purposedetails extends StatefulWidget {
  const Purposedetails({super.key});

  @override
  State<Purposedetails> createState() => _PurposedetailsState();
}

class _PurposedetailsState extends State<Purposedetails> {
  String? _selectedOption;
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
                    text: 'Purpose Details', color: const Color(0xFF367B86)),
                Gap(184.91.w),
                const Icon(Icons.arrow_drop_down, color: Color(0xFF367B86)),
              ]),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          const Dropdownwidgetandtitle(
                            heightofbox: 54,
                            
                            title: 'Lead Source',
                            dropdownentries: [
                              'india',
                              'pakisthan',
                              'england',
                              'america',
                              'canada'
                            ],
                          ),
                          Gap(10.w),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 47.14.h,
                              width: 47.14.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF367B86),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Gap(20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      medium.reg18(
                          text: 'Lead Purpose', color: const Color(0xFF474747)),
                      Gap(23.h),
                      Row(
                        children: <Widget>[
                          Radiobuttonwidget(
                            buttontitle: 'Product',
                            optionno: 'option 1',
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                            groupValue: _selectedOption,
                          ),
                          Gap(30.w),
                          Radiobuttonwidget(
                            buttontitle: 'Service',
                            optionno: 'option 2',
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                            groupValue: _selectedOption,
                          ),
                          Gap(30.w),
                          Radiobuttonwidget(
                            buttontitle: 'Others',
                            optionno: 'option 3',
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                            groupValue: _selectedOption,
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(28.w),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Dropdownwidgetandtitle(
                        heightofbox: 54,
                        
                        title: 'Service',
                        dropdownentries: [
                          'india',
                          'pakisthan',
                          'england',
                          'america',
                          'canada'
                        ],
                      )
                    ],
                  )
                ],
              ))
        ]);
  }
}
