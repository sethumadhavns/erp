import 'dart:developer';

import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Textfieldandheading extends StatefulWidget {
  final String? title;
  final int? height;
  final String? hinttext;
  final List<String>? dropdownentries;
  const Textfieldandheading(
      {this.title,
      this.height = 54,
      this.hinttext,
      this.dropdownentries,
      super.key});

  @override
  State<Textfieldandheading> createState() => _TextfieldandheadingState();
}

class _TextfieldandheadingState extends State<Textfieldandheading> {
  TextEditingController text = TextEditingController();
  TextEditingController dropdown = TextEditingController();
  ValueNotifier<List<String>> filtereditems = ValueNotifier<List<String>>([]);
  final GlobalKey<OverlayState> overlaykey = GlobalKey<OverlayState>();
  final containerkey = GlobalKey();
  OverlayEntry? overlayentry;

  String? dropdownvalue;
  @override
  void initState() {
    super.initState();
    List<String> newfiltereditems = widget.dropdownentries ?? [];
    filtereditems.value = [...newfiltereditems];
    dropdown.addListener(filteritems);
  }

  void filteritems() {
    String searchText = dropdown.text;
    setState(() {
      List<String> newfiltereditems = widget.dropdownentries!
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
      filtereditems.value = [...newfiltereditems];
    });
  }

  void showcontainer() {
     overlayentry?.remove();
 overlayentry = null;
    final RenderBox textfieldrenderbox =
        containerkey.currentContext!.findRenderObject() as RenderBox;
    final textfieldsize = textfieldrenderbox.size;
    final textfieldposition = textfieldrenderbox.localToGlobal(Offset.zero);
    final dropdownposition =
        textfieldposition.translate(0, textfieldsize.height);

    overlayentry = OverlayEntry(
        builder: (context) => Positioned(
              top: dropdownposition.dy,
              child: Material(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.h,
                  child: ValueListenableBuilder<List<String>>(
                    valueListenable: filtereditems,
                    builder: (context, value, child) => ListView.builder(padding: EdgeInsets.all(0),
                        itemCount: value.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              
                              hideDropdown();
                              log('attempting to remove');
                              if (value.isNotEmpty) {
                                dropdown.text = value[index];
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
 
    Overlay.of(context).insert(overlayentry!);
    
  }

  void hideDropdown() {//to remove the overlay when clicking on inkwell
    
    overlayentry?.remove();
    overlayentry = null;
  }

  

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Overlay(key: overlaykey, initialEntries: [
        OverlayEntry(
          builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (widget.title != null) ...[
                medium.reg18(text: widget.title!),
                Gap(15.h),
              ],
              Container(
                //the roundcontainer which has textfield
                key: containerkey,
                height: widget.height!.h,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFC1C1C1)),
                    borderRadius: BorderRadius.circular(16.w)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        if (widget.hinttext == null) ...[
                          medium.reg18(
                              text: '-', color: const Color(0xFF909090)),
                          Gap(10.w),
                        ],
                        if (widget.dropdownentries == null) ...[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: widget.hinttext ?? ''),
                            ),
                          ),
                           Gap(10.w),
                        ],
                       
                        if (widget.dropdownentries != null) ...[ Expanded(
                              child: TextField(
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            controller: dropdown,
                            onTap: () {
                              
                                showcontainer();
                              
                            },
                          )),SvgPicture.asset(
                            'assets/images/dropdownarrow.svg',
                            height: 6.h,
                            width: 12.w,
                          )]
                         
                       
                          
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
