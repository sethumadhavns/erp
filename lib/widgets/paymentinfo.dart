import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
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
    return Accordion(contentBorderColor: Colors.white, children: [
      AccordionSection(
          isOpen: true,
          headerBackgroundColor: Colors.white,
          header:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            medium.reg20(text: 'Payment Info', color: const Color(0xFF367B86)),
            const Icon(Icons.arrow_drop_down, color: Color(0xFF367B86)),
          ]),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Textfieldandheading(title: 'Tax No',dropdownentries: [],),
              Gap(20.h),
             const Textfieldandheading(title: 'Payment Term',dropdownentries: [],),
              Gap(20.h),
              const Textfieldandheading(title: 'Payment Term Condition',dropdownentries: [],),
              Gap(20.h),
             const Textfieldandheading(title: 'Currency',dropdownentries: [],),
            ],
          ))
    ]);
  }
}
