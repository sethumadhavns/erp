import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AddQuatationProducts extends StatelessWidget {
  final String productName;
  final String price;
  final String noOfPeace;
  final bool moreInfo;
  const AddQuatationProducts(
      {required this.productName,
      required this.price,
      required this.noOfPeace,
      this.moreInfo = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              medium.reg16(text: productName, color:colors.quatationProductNameColour ),
              Gap(12.h),
              medium.reg14(
                  text: '\$ $price/Peace', color:colors. quatationProductPriceColour),
              Gap(16.h),
              medium.reg16(
                  text: '$noOfPeace Peace', color: colors.quatationProductNoOfPieceColour)
            ],
          ),
          if (moreInfo)
            Column(
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: colors.primaryGreenColour.withOpacity(0.31)),
                      borderRadius: BorderRadius.circular(27.w)),
                  label: medium.reg14(
                      text: 'More Info', color: colors.primaryGreenColour),
                  labelPadding: const EdgeInsets.all(0),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 17.w),
                ),
              ],
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    // Image.asset(
                    //   'assets/images/editicon.png',
                    //   height: 18.3.h,
                    //   width: 18.3.w,
                    // ),
                    SvgPicture.asset(images.edit,height: 18.3.h,width: 18.3.w,),
                    Gap(19.78.w),
                    SvgPicture.asset(
                      images.deleteBin,
                      height: 18.3.h,
                      width: 18.3.w,
                    )
                  ],
                ),
              ],
            )
        ],
      )
    ]);
  }
}
