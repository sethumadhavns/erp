import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AddQuotationProducts extends StatelessWidget {
  final String productName;
  final String price;
  final String noOfPeace;
  final bool moreInfo;
  ///Contains [productName],[price] and [noOfPeace] of product.
  /// Shows icons edit and bin for editing in default and will show moreInfo iconButton when setting [moreInfo]=true
  const AddQuotationProducts(
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
              medium.reg16(text: productName, color:colors.quotationProductNameColor ),
              Gap(12.h),
              medium.reg14(
                  text: '\$ $price/Peace', color:colors. quotationProductPriceColor),
              Gap(16.h),
              medium.reg16(
                  text: '$noOfPeace Peace', color: colors.quotationProductNoOfPieceColor)
            ],
          ),
          if (moreInfo)
            Column(
              children: <Widget>[
                Chip(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: colors.primaryGreenColor.withOpacity(0.31)),
                      borderRadius: BorderRadius.circular(27.w)),
                  label: medium.reg14(
                      text: 'More Info', color: colors.primaryGreenColor),
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
