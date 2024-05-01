import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CountryDropDown extends StatefulWidget {
  final String? title;
  final List<String>? countryCode;
  ///Dropdown Textfield with 2 textfield,one for selecting country code using [countryCode],
  ///Other textfield to type the number
  const CountryDropDown(
      {required this.countryCode, this.title, super.key});

  @override
  State<CountryDropDown> createState() =>
      _CountryDropDownState();
}

class _CountryDropDownState extends State<CountryDropDown> {
  TextEditingController countryDropDown = TextEditingController();
  ValueNotifier<List<String>> filteredItems = ValueNotifier<List<String>>([]);
  final GlobalKey<OverlayState> overlayKey = GlobalKey<OverlayState>();
  final containerKey = GlobalKey();
  OverlayEntry? overlayEntry;
  @override
  void initState() {
    super.initState();
    List<String> newFilteredItems = widget.countryCode ?? [];
    filteredItems.value = [...newFilteredItems];
    countryDropDown.addListener(filterItems);
  }

  void filterItems() {
    String searchText = countryDropDown.text;
    setState(() {
      List<String> newFilteredItems = widget.countryCode!
          .where((item) => item.contains(searchText))
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
                  width: 83.w,
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

                              if (value.isNotEmpty) {
                                countryDropDown.text = value[index];
                              }

                              
                                value = [];
                              
                            },
                            child: Container(
                              width: 83.w,
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
    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Overlay(
      key: overlayKey,
      initialEntries: [
        OverlayEntry(
          canSizeOverlay: true,
          builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widget.title != null) medium.reg18(text: widget.title!),
              if (widget.title != null) Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 54.h,
                    width: 83.w,
                    key: containerKey,
                    decoration: BoxDecoration(
                        border: Border.all(color: colors.containerBorderColor),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.w),
                            bottomLeft: Radius.circular(16.w),
                            topRight: Radius.zero,
                            bottomRight: Radius.zero)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Baseline(
                            baseline: 25,
                            baselineType: TextBaseline.alphabetic,
                            child: SizedBox(
                              width: 30.w,
                              height: 40.h,
                              child: TextField(
                                decoration:
                                    const InputDecoration(border: InputBorder.none),
                                onTap: () {
                                  showContainer();
                                },
                                controller: countryDropDown,
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ),
                          ),
                          Baseline(
                            baseline: 40,
                            baselineType: TextBaseline.alphabetic,
                            child: Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                images.dropDownArrow,
                                height: 6.h,
                                width: 12.w,
                                color:colors.dropDownArrowColor ,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 54.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: colors.containerBorderColor),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                              topRight: Radius.circular(16.w),
                              bottomRight: Radius.circular(16.w))),
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 7.h),
                        child: const TextField(textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
