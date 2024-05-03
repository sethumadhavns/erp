import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:erp_widget_packages/widgets/country_code_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddContact extends StatelessWidget {
  ///this widget contains text fields required to add contact 
  ///[1]Name field
  ///[2]Phone No
  ///[3]Mobile NO
  ///[4]Whatsapp No
  ///[5]Designation
  ///[6]Remarks
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DropDown(title: 'Name',),
        Gap(20.h),
        const CountryDropDown(countryCode: [],title: 'Phone No',),
         Gap(20.h),
         const CountryDropDown(countryCode: [],title: 'Mobile No',),
          Gap(20.h),
          const CountryDropDown(countryCode: [],title: 'Whatsapp No',),
           Gap(20.h),
          const DropDown(title: 'Designation',),
           Gap(20.h),
          const DropDown(title: 'Remarks',height: 106
          ,)


      ],
    );
  }
}
