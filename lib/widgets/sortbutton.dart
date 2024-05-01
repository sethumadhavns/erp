import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon: Padding(
      padding: const EdgeInsets.all(17.0),
      child: SvgPicture.asset(images.sortIcon,height: 24.h,width: 24.w,)
    ));
  }
}