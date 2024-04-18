import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/widgets/dropdownboxwithtitle.dart';
import 'package:erp_widget_packages/widgets/product_widget.dart';
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
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Accordion(
          contentBorderColor: Colors.white,
          
          children: [
            AccordionSection(
                isOpen: true,
               
                headerBackgroundColor: Colors.white,
                header: medium.reg20(
                    text: 'Payment Info', color: const Color(0xFF367B86)),
                    rightIcon:  Image.asset(
                          'assets/images/dropdownbutton.png',
                         height: 6.04.h,
                         width: 12.09.w,
                          color: const Color(0xFF367B86),
                        ),
                content:Column(children: <Widget>[
                  const Dropdownwidgetandtitle(heightofbox: 54, title: 'Tax No',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                   const Dropdownwidgetandtitle(heightofbox: 54,  title: 'Payment Term',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                   const Dropdownwidgetandtitle(heightofbox: 54,  title: 'Payment Term Condition',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                   const Dropdownwidgetandtitle(heightofbox: 54,  title: 'Currency',dropdownentries: ['india','pakisthan','england','america','canada'],),
                  Gap(20.h),
                ],)
                )
          ]
          ),
    );
  }
}