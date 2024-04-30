import 'dart:developer';

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class TextFieldAndHeading extends StatefulWidget {
  final String? title;
  final int? height;
  final String? hintText;
  final List<String>? dropDownEntries;
  const TextFieldAndHeading(
      {this.title,
      this.height = 54,
      this.hintText,
      this.dropDownEntries,
      super.key});

  @override
  State<TextFieldAndHeading> createState() => _TextFieldAndHeadingState();
}

class _TextFieldAndHeadingState extends State<TextFieldAndHeading> {
  TextEditingController text = TextEditingController();
  TextEditingController dropDown = TextEditingController();
  ValueNotifier<List<String>> filteredItems = ValueNotifier<List<String>>([]);
  final GlobalKey<OverlayState> overlayKey = GlobalKey<OverlayState>();
  final containerKey = GlobalKey();
  OverlayEntry? overlayEntry;

  String? dropDownValue;
  @override
  void initState() {
    super.initState();
    List<String> newFilteredItems = widget.dropDownEntries ?? [];
    filteredItems.value = [...newFilteredItems];
    dropDown.addListener(filteritems);
  }

  void filteritems() {
    String searchText = dropDown.text;
    setState(() {
      List<String> newFilteredItems = widget.dropDownEntries!
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
      filteredItems.value = [...newFilteredItems];
    });
  }

  void showContainer() {
    overlayEntry?.remove();
    overlayEntry = null;
    final RenderBox textFieldRenderBox =
        containerKey.currentContext!.findRenderObject() as RenderBox;
    final textFieldSize = textFieldRenderBox.size;
    final textFieldPosition = textFieldRenderBox.localToGlobal(Offset.zero);
    final dropDownPosition =
        textFieldPosition.translate(0, textFieldSize.height);

    overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
              top: dropDownPosition.dy,
              child: Material(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200.h,
                  child: ValueListenableBuilder<List<String>>(
                    valueListenable: filteredItems,
                    builder: (context, value, child) => ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: value.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              hideDropdown();
                              log('attempting to remove');
                              if (value.isNotEmpty) {
                                dropDown.text = value[index];
                              }

                              setState(() {
                                value = [];
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: ListTile(
                                title: Text(value[index]),
                              ),
                            ),
                          );
                        })),
                  ),
                ),
              ),
            ));

    Overlay.of(context).insert(overlayEntry!);
  }

  void hideDropdown() {
    //to remove the overlay when clicking on inkwell

    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Overlay(key: overlayKey, initialEntries: [
      OverlayEntry(
        canSizeOverlay: true,
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (widget.title != null) ...[
              medium.reg18(text: widget.title!),
              Gap(15.h),
            ],
            Container(
              //the roundcontainer which has textfield
              key: containerKey,
              height: widget.height!.h,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFC1C1C1)),
                  borderRadius: BorderRadius.circular(16.w)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    if (widget.hintText == null) ...[
                      medium.reg18(text: '-', color: const Color(0xFF909090)),
                      Gap(10.w),
                    ],
                    if (widget.dropDownEntries == null) ...[
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: widget.hintText ?? '',
                              hintStyle: TextStyle(
                                  fontFamily: 'GilroyRegular',
                                  fontSize: 18.sp,
                                  color: const Color(0xFFA1A1A1))),
                        ),
                      ),
                      Gap(10.w),
                    ],
                    if (widget.dropDownEntries != null) ...[
                      Expanded(
                          child: TextField(
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        controller: dropDown,
                        onTap: () {
                          showContainer();
                        },
                      )),
                      SvgPicture.asset(
                        images.dropDownArrow,
                        height: 6.h,
                        width: 12.w,
                      )
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
