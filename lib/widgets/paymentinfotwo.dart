import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/product_details.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PaymentInfoTwo extends StatefulWidget {
  ///contains [DropDown]
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
                text: 'Payment Info', color: colors.primaryGreenColor),
            rightIcon: SvgPicture.asset(
              images.dropDownArrow,
              height: 6.04.h,
              width: 12.09.w,
              color: colors.primaryGreenColor,
            ),
            content: Column(
              children: <Widget>[
                const DropDown(title: 'Sales Person',dropDownEntries: [],),
                Gap(20.h),
               const DropDown(title: 'Status',dropDownEntries: [],),
                Gap(20.h),
                const  DropDown(title: 'Remarks',height: 106, dropDownEntries: [],),
                
              ],
            ))
      ]),
    );
  }
}
