import 'package:flutter/material.dart';

class Togglebutton extends StatefulWidget {
  const Togglebutton({super.key});

  @override
  State<Togglebutton> createState() => _TogglebuttonState();
}

class _TogglebuttonState extends State<Togglebutton> {
  bool light = true;
  @override
   
  Widget build(BuildContext context) {
    return  Switch(
      thumbColor:const MaterialStatePropertyAll(Colors.white),
     
      value: light,
      inactiveTrackColor: const Color(0xFFB1B1B1),
      trackOutlineWidth: const MaterialStatePropertyAll(.1),
      activeTrackColor: const Color(0xFF161616),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.white),
      onChanged: (bool value) {
        
        setState(() {
          light = value;
        });
      },
    );
  }
}