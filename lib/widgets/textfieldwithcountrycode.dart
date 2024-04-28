import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Textfieldwithcountrycode extends StatefulWidget {
  final String? title;
  final List<String>? countrycode;
  const Textfieldwithcountrycode({required this.countrycode,this.title, super.key});

  @override
  State<Textfieldwithcountrycode> createState() =>
      _TextfieldwithcountrycodeState();
}

class _TextfieldwithcountrycodeState extends State<Textfieldwithcountrycode> {
  TextEditingController countrydropdown = TextEditingController();
   ValueNotifier<List<String>> filtereditems = ValueNotifier<List<String>>([]);
    final GlobalKey<OverlayState> overlaykey = GlobalKey<OverlayState>();
  final containerkey = GlobalKey();
  OverlayEntry? overlayentry;
  @override
   void initState() {
    super.initState();
    List<String> newfiltereditems = widget.countrycode?? [];
    filtereditems.value = [...newfiltereditems];
    countrydropdown.addListener(filteritems);
  }
  void filteritems() {
    String searchText = countrydropdown.text;
    setState(() {
      List<String> newfiltereditems = widget.countrycode!
          .where(
              (item) => item.contains(searchText))
          .toList();
      filtereditems.value = [...newfiltereditems];
    });
  }
   void showcontainer() {
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
                  width: 83.w,
                  height: 200.h,
                  child: ValueListenableBuilder<List<String>>(
                    valueListenable: filtereditems,
                    builder: (context, value, child) => ListView.builder(
                        itemCount: value.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              hideDropdown();
                             
                              if (value.isNotEmpty) {
                              countrydropdown.text = value[index];
                              }

                              setState(() {
                                value = [];
                              });
                            },
                            child: Container(width: 83.w,
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
   void hideDropdown() {
    overlayentry?.remove();
    overlayentry = null;
  }


  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Overlay(key:overlaykey ,initialEntries: [ OverlayEntry(builder: (context) => 
         Column(crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
           children: [if(widget.title!=null) medium.reg18(text: widget.title!),
           if(widget.title!=null)Gap(15.h),
             Row(mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 52.h,
                    width: 83.w,
                    key: containerkey,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC1C1C1)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.w),
                            bottomLeft: Radius.circular(16.w),
                            topRight: Radius.zero,
                            bottomRight: Radius.zero)),
                    child: SizedBox(width: 50,
                      child: Center(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 50,
                              child: TextField(
                                decoration: InputDecoration(border:InputBorder.none ),
                                onTap: (){
                                 showcontainer();
                                },
                                controller: countrydropdown,
                                style: TextStyle(fontSize: 18.sp),
                              ),
                            ),SvgPicture.asset('assets/images/dropdownarrow.svg',
                            height: 6.h,
                                  width: 12.w,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 52.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFC1C1C1)),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                              topRight: Radius.circular(16.w),
                              bottomRight: Radius.circular(16.w))),
                    ),
                  )
                ],
              ),
           ],
         ),
      ),],
        
      ),
    );
  }
}
