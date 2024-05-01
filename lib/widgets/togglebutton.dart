import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  ///toggle button with inactive and active track color fixed
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
      inactiveTrackColor: colors.toggleButtonInactiveColor,
      trackOutlineWidth: const MaterialStatePropertyAll(.1),
      activeTrackColor: colors.toggleButtonActiveColor,
      trackOutlineColor: const MaterialStatePropertyAll(Colors.white),
      onChanged: (bool value) {
        
        setState(() {
          light = value;
        });
      },
    );
  }
}