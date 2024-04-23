import 'package:accordion/accordion.dart';
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Inventory extends StatefulWidget {
  final String onhand;
  final String purchase;
  final String sale;
  final String reservedproducts;
  final String sellablequantity;

  const Inventory(
      {required this.onhand,
      required this.purchase,
      required this.sale,
      required this.reservedproducts,
      required this.sellablequantity,
      super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Accordion(
            contentHorizontalPadding: 0,
            contentBorderColor: Colors.white,
            openAndCloseAnimation: false,
            children: [
              AccordionSection(
                  headerBorderColor: Colors.white,
                  headerBackgroundColor: Colors.white,
                  headerBackgroundColorOpened:
                      const Color(0xFF367B86).withOpacity(0.08),
                  rightIcon: Icon(Icons.keyboard_arrow_down,
                      color: const Color(0xFF367B86), size: 25.w),
                  headerPadding:
                      EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
                  header: medium.reg18(
                      text: 'Inventory', color: const Color(0xFF367B86)),
                  content: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 444.79.h,
                      width: 423.w,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.94.w),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 380.24.w,
                                height: 112.77.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      widget.onhand,
                                      style: TextStyle(
                                          fontSize: 48.sp,
                                          fontFamily: 'GilroyRegular',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    medium.reg15(text: 'On Hand')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Gap(10.h),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                height: 112.77.h,
                                width: 184.99.w,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.94.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        widget.purchase,
                                        style: TextStyle(
                                            fontSize: 48.sp,
                                            fontFamily: 'GilroyRegular',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      medium.reg15(text: 'Purchase')
                                    ],
                                  ),
                                ),
                              ),
                              Gap(10.w),
                              SizedBox(
                                height: 112.77.h,
                                width: 181.46.w,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.94.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                         widget.sale,
                                        style: TextStyle(
                                            fontSize: 48.sp,
                                            fontFamily: 'GilroyRegular',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      medium.reg15(text:'Sale')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap(10.h),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                  height: 112.77.h,
                                  width: 184.99.w,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.94.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                           widget.reservedproducts,
                                          style: TextStyle(
                                              fontSize: 48.sp,
                                              fontFamily: 'GilroyRegular',
                                              fontWeight: FontWeight.w400),
                                        ),
                                        medium.reg15(
                                            text: 'Reserved Products',
                                            color: const Color(0xFF000000))
                                      ],
                                    ),
                                  )),
                              Gap(10.w),
                              SizedBox(
                                height: 112.77.h,
                                width: 181.46.w,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.94.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        widget.sellablequantity,
                                        style: TextStyle(
                                            fontSize: 48.sp,
                                            fontFamily: 'GilroyRegular',
                                            fontWeight: FontWeight.w400),
                                      ),
                                      medium.reg15(
                                          text: 'Sellable Quantity',
                                          color: const Color(0xFF000000))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ]),
      ],
    );
  }
}
