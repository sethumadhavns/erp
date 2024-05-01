import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 15.w),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              prefixIcon:SvgPicture.asset(
                  images.searchIcon,
                  height: 18.95.h,
                  width: 18.95.w,
                  color: colors.searchIconColor,
                ),
              hintText: 'Search',
              hintStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'GilroyMedium',
                  color:colors.searchHintText ),border: InputBorder.none),
        )
        //  Row(
        //   children: <Widget>[
        //     Image.asset(
        //       'assets/images/searchicon.png',
        //       height: 18.95.h,
        //       width: 18.95.w,
        //     ),
        //     Gap(6.w),
        //     medium.reg18(text: 'Search', color: const Color(0xFF939393))
        //   ],
        // ),
        );
  }
}
