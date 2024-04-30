import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:erp_widget_packages/widgets/textfieldwithcountrycode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldAndHeading(
          title: 'Coutry',
          dropDownEntries: [
            'America',
            'usa',
            'india',
            'indonasia',
            'china',
            'Colombia'
          ],
        ),
        TextFieldWithCountryCode(
            title: 'Phone No', countryCode: ['91', '92', '93']),
        TextFieldWithCountryCode(
            title: 'Mobile No', countryCode: ['91', '92', '93']),
        TextFieldAndHeading(
          title: 'City',
          dropDownEntries: ['City1', 'city2'],
        ),
        TextFieldWithCountryCode(
            title: 'Whatsapp No', countryCode: ['91', '92', '93']),
        TextFieldAndHeading(
          title: 'Designation',
        ),
        TextFieldAndHeading(
          title: 'Designation',
          dropDownEntries: ['Owner', 'Vendor', 'Seller'],
        ),
      ],
    );
  }
}
