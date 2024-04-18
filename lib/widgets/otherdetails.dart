import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/dropdownboxwithtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Otherdetails extends StatefulWidget {
  const Otherdetails({super.key});

  @override
  State<Otherdetails> createState() => _OtherdetailsState();
}

class _OtherdetailsState extends State<Otherdetails> {
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
                      text: 'Payment Info', color: const Color(0xFF367B86)),
                  Gap(184.91.w),
                  const Icon(Icons.arrow_drop_down, color: Color(0xFF367B86)),
                ],
              ),
              content: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Dropdownwidgetandtitle(
                        heightofbox: 54,  title: 'Country',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54,  title: 'State',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54, title: 'Location',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54,  title: 'Mobile No',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54,  title: 'Whatsapp No',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54, title: 'Website',dropdownentries: ['india','pakisthan','england','america','canada'],),
                        Gap(20.h),
                    const Dropdownwidgetandtitle(
                        heightofbox: 54,  title: 'Status',dropdownentries: ['india','pakisthan','england','america','canada'],),
                    medium.reg18(text: 'Remarks'),
                    Gap(15.h),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.w),
                            border: Border.all(color: const Color(0xFFC1C1C1))),
                        height: 106.h,
                        width: 343.w,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 20.w),
                              child: const Icon(
                                Icons.remove,
                                color: Color(0xFF909090),
                                size: 15,
                              ),
                            )))
                  ],
                ),
              ))
        ]);
  }
}
