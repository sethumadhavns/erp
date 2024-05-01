import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Products extends StatelessWidget {
  final String productName;
  final String noOfPeace;
  ///contains Products NAME  and no of pieces available
  ///its accepts [productName]and[noOfPeace] as constructor
  
  const Products(
      {required this.productName, required this.noOfPeace, super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      //main column
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          //row containing image details and info button
          children: [
            Container(
              height: 82.86.h,
              width: 82.27.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  color: colors. boxColor),
            ),
            Gap(12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             

              //column containing name and peace
              children: [
                medium.reg17(text: productName, color:colors.productNameColor ),
                Gap(12.h),
                Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(43.51.w)),
                    side: BorderSide(
                        width: 1.14.w,
                        color:  colors.primaryGreenColor.withOpacity(0.35)),
                    padding: EdgeInsets.symmetric(
                        horizontal: 11.71.w, vertical: 8.17.h),
                    labelPadding: const EdgeInsets.all(0),
                    label: semibold.reg14(
                        text: '$noOfPeace Peace',
                        color:colors. primaryGreenColor))
              ],
            ),
            Gap(10.w),
            Container(
              height: 19.h,
              width: 18.96.w,
              decoration: BoxDecoration(
                  border: Border.all(color: colors.notificationIconColor),
                  shape: BoxShape.circle),
                  child: Center(child: semibold.reg12(text: '!',color: colors.notificationIconColor)),
            )
          ],
        )
      ],
    );
  }
}
