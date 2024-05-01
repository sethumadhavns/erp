import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:erp_widget_packages/widgets/country_code_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropDown(title: 'Name',),
        CountryDropDown(countryCode: [],title: 'Phone No',),
         CountryDropDown(countryCode: [],title: 'Mobile No',),
          CountryDropDown(countryCode: [],title: 'Whatsapp No',),
          DropDown(title: 'Designation',),
          DropDown(title: 'Remarks',height: 106
          ,)


      ],
    );
  }
}
