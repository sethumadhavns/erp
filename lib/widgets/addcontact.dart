import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter/material.dart';

class Addcontact extends StatelessWidget {
  const Addcontact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Textfieldandheading(
          title: 'Name',
         
        ),
        Textfieldandheading(title: 'Phone No',dropdownentries: ['india',
            'pakisthan',
            'england',
            'america',
            'europe',
            'spain'],),
            Textfieldandheading(title: 'Mobile No',),
            Textfieldandheading(title: 'Whatsapp No',),
            
            
            
      ],
    );
  }
}
