import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductOverview extends StatefulWidget {
  final String mainField;
  final List<String> subField;
  final List<String> imagePath;
  ///In Product page an overview accordion,when its open many more accordion appears.
  ///The inner accordion can be accessed by [subField]
  const ProductOverview(
      {required this.mainField,
      required this.subField,
      required this.imagePath,
      super.key});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    List<AccordionSection> accordionSections = widget.subField.map((title) {
      int index = widget.subField.indexOf(title);
      return buildAccordionSection(title, widget.imagePath[index]);
    }).toList();

    return Accordion(
      contentHorizontalPadding: 0,
      contentVerticalPadding: 0,
      paddingListBottom: 0,
      openAndCloseAnimation: false,
      paddingListTop: 0,
      children: [
        AccordionSection(
          isOpen: true,
          contentBorderColor: Colors.white,
          headerBorderRadius: 16.w,
          headerPadding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
          headerBackgroundColor: Colors.white,
          headerBackgroundColorOpened:
              colors.primaryGreenColor.withOpacity(0.08),
          rightIcon: null,
          header: Row(
            children: [
              medium.reg18(
                  text: widget.mainField, color: colors.primaryGreenColor),
              Gap(289.w),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
          content: Container(
            color: Colors.blue,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(alignment: Alignment.topLeft,
                    child: Accordion(
                        contentBorderColor: Colors.white,
                        children: accordionSections),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  AccordionSection buildAccordionSection(String title, String imagePath) {
    return AccordionSection(
      rightIcon: Icon(Icons.keyboard_arrow_down,
          color: colors.instructionTextColor, size: 25.w),
      headerBackgroundColor: Colors.white,
      headerBorderRadius: 16.w,
      headerPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      header: medium.reg18(text: title, color: colors.instructionTextColor),
      content: Image.asset(imagePath),
    );
  }
}
