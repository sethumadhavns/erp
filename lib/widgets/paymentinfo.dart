import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/product_details.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PaymentInfo extends StatefulWidget {
  ///Contains [DropDown] in an Accordion..
  const PaymentInfo({super.key});

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
  @override
  Widget build(BuildContext context) {
    return Accordion(contentBorderColor: Colors.white, children: [
      AccordionSection(
          isOpen: true,
          headerBackgroundColor: Colors.white,
          header:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            medium.reg20(text: 'Payment Info', color: colors.primaryGreenColor),
            SvgPicture.asset(
              images.dropDownArrow,
              height: 6.04.h,
              width: 12.09.w,
              color: colors.primaryGreenColor,
            )
          ]),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const DropDown(
                title: 'Tax No',
                dropDownEntries: [],
              ),
              Gap(20.h),
              const DropDown(
                title: 'Payment Term',
                dropDownEntries: [],
              ),
              Gap(20.h),
              const DropDown(
                title: 'Payment Term Condition',
                dropDownEntries: [],
              ),
              Gap(20.h),
              const DropDown(
                title: 'Currency',
                dropDownEntries: [],
              ),
            ],
          ))
    ]);
  }
}
