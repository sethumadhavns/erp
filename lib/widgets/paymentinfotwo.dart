import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PaymentInfoTwo extends StatefulWidget {
  const PaymentInfoTwo({super.key});

  @override
  State<PaymentInfoTwo> createState() => _PaymentInfoTwoState();
}

class _PaymentInfoTwoState extends State<PaymentInfoTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Accordion(contentBorderColor: Colors.white, children: [
        AccordionSection(
            isOpen: true,
            headerBackgroundColor: Colors.white,
            header: medium.reg20(
                text: 'Payment Info', color: colors.primaryGreenColour),
            rightIcon: Image.asset(
              'assets/images/dropdownbutton.png',
              height: 6.04.h,
              width: 12.09.w,
              color: colors.primaryGreenColour,
            ),
            content: Column(
              children: <Widget>[
                const TextFieldAndHeading(title: 'Sales Person',dropDownEntries: [],),
                Gap(20.h),
               const TextFieldAndHeading(title: 'Status',dropDownEntries: [],),
                Gap(20.h),
                const  TextFieldAndHeading(title: 'Remarks',height: 106, dropDownEntries: [],),
                
              ],
            ))
      ]),
    );
  }
}
