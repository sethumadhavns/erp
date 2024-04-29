import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:erp_widget_packages/widgets/textfieldwithcountrycode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addcontact extends StatelessWidget {
  const Addcontact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Textfieldandheading(
          title: 'Coutry',
          dropdownentries: ['America','usa','india','indonasia','china','Colombia'],
        ),
        Textfieldwithcountrycode(
            title: 'Phone No', countrycode: ['91', '92', '93']),
        Textfieldwithcountrycode(
            title: 'Mobile No', countrycode: ['91', '92', '93']),
            Textfieldandheading(title: 'City',dropdownentries: ['City1','city2'],),
        Textfieldwithcountrycode(
            title: 'Whatsapp No', countrycode: ['91', '92', '93']),
             Textfieldandheading(
          title: 'Designation',
        ),
         Textfieldandheading(
          title: 'Designation',
          dropdownentries: ['Owner','Vendor','Seller'],
          
        ),
      ],
    );
  }
}
