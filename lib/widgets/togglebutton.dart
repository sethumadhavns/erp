import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
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