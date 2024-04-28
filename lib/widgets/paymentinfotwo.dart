import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Paymentinfotwo extends StatefulWidget {
  const Paymentinfotwo({super.key});

  @override
  State<Paymentinfotwo> createState() => _PaymentinfotwoState();
}

class _PaymentinfotwoState extends State<Paymentinfotwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Accordion(contentBorderColor: Colors.white, children: [
        AccordionSection(
            isOpen: true,
            headerBackgroundColor: Colors.white,
            header: medium.reg20(
                text: 'Payment Info', color: const Color(0xFF367B86)),
            rightIcon: Image.asset(
              'assets/images/dropdownbutton.png',
              height: 6.04.h,
              width: 12.09.w,
              color: const Color(0xFF367B86),
            ),
            content: Column(
              children: <Widget>[
                const Textfieldandheading(title: 'Sales Person',dropdownentries: [],),
                Gap(20.h),
               const Textfieldandheading(title: 'Status',dropdownentries: [],),
                Gap(20.h),
                const  Textfieldandheading(title: 'Remarks',height: 106, dropdownentries: [],),
                
              ],
            ))
      ]),
    );
  }
}
