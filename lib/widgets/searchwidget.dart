import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          prefixIcon:IconButton(onPressed: () {
            
          },
             icon: SvgPicture.asset(
                images.searchIcon,
                height: 18.95.h,
                width: 18.95.w,
                color: colors.searchIconColor,
                
              ),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'GilroyMedium',
              color:colors.searchHintText ),border: InputBorder.none),
    );
  }
}
