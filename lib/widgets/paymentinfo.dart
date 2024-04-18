import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/dropdownboxwithtitle.dart';
import 'package:erp_widget_packages/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Paymentinfo extends StatefulWidget {
  const Paymentinfo({super.key});

  @override
  State<Paymentinfo> createState() => _PaymentinfoState();
}

class _PaymentinfoState extends State<Paymentinfo> {
  @override
  Widget build(BuildContext context) {
    return Accordion(
        contentBorderColor: Colors.white,
       
        children: [
          AccordionSection(
              isOpen: true,
             
              headerBackgroundColor: Colors.white,
              header: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                medium.reg20(
                    text: 'Payment Info', color: const Color(0xFF367B86)),
               
                const Icon(Icons.arrow_drop_down, color: Color(0xFF367B86)),
              ]),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Dropdownwidgetandtitle(
                      heightofbox: 54,  title: 'Sales Person',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                  const Dropdownwidgetandtitle(
                      heightofbox: 54, title: 'Status',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                  medium.reg18(text: 'Remarks'),
                  Gap(15.h),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.w),
                          border: Border.all(color: const Color(0xFFC1C1C1))),
                      height: 106.h,
                    
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 20.w),
                            child: const Icon(Icons.remove, color: Color(0xFF909090),size: 15,),
                          ))),
                ],
              ))
        ]);
  }
}
