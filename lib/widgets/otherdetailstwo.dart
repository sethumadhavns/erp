// ignore_for_file: unnecessary_import

import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/dropdownboxwithtitle.dart';
import 'package:erp_widget_packages/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Otherdetailstwo extends StatefulWidget {
  const Otherdetailstwo({super.key});

  @override
  State<Otherdetailstwo> createState() => _OtherdetailstwoState();
}

class _OtherdetailstwoState extends State<Otherdetailstwo> {
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
            medium.reg20(text: 'Payment Info', color: const Color(0xFF367B86)),
            Gap(184.91.w),
            const Icon(Icons.arrow_drop_down, color: Color(0xFF367B86)),
          ]),
          content: Align(
            alignment: Alignment.topLeft,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
              const Dropdownwidgetandtitle(
                  heightofbox: 54,  title: 'Country',dropdownentries: ['india','pakisthan','england','america','canada'],),
              Gap(20.h),
              const Dropdownwidgetandtitle(
                  heightofbox: 54, title: 'State',dropdownentries: ['india','pakisthan','england','america','canada'],),
              Gap(20.h),
              const Dropdownwidgetandtitle(
                  heightofbox: 54,  title: 'City',dropdownentries: ['india','pakisthan','england','america','canada'],),
              Gap(20.h),
              medium.reg18(text: 'Address', color: const Color(0xFF474747)),
              Gap(15.h),
              Container(
                height: 102.h,
                width: 343.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.w),
                    border: Border.all(color: const Color(0xFFC1C1C1))),
                     child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 20.w),
                              child: const Icon(
                                Icons.remove,
                                color: Color(0xFF909090),
                                size: 15,
                              ),
                            ))
              ),
               Gap(20.h),
              medium.reg18(text: 'Remarks', color: const Color(0xFF474747)),
              Gap(15.h),
              Container(
                height: 120.h,
                width: 343.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.w),
                    border: Border.all(color: const Color(0xFFC1C1C1))),
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
            ]
              ),
              ),
              )
            ],
            );
          
        
      
    
  }
}
