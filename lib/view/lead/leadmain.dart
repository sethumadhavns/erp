import 'package:erp_widget_packages/widgets/contactdetails.dart';
import 'package:erp_widget_packages/widgets/contactdetailsconditions.dart';
import 'package:flutter/material.dart';

class Leadmain extends StatefulWidget {
  const Leadmain({super.key});

  @override
  State<Leadmain> createState() => _LeadmainState();
}

class _LeadmainState extends State<Leadmain> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFF0F6F4),
        child: const Column(
          children: <Widget>[
            Contactdetails(
                name: 'Athish',
                date: '15/01/24',
                email: 'demo@gmail.com',
                landphone: '0487 2551998',
                condition: Contactconditions.newcontact,
                call: true
                ,),
                
          ],
        ));
  }
}
