
import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/radiobutton.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:gap/gap.dart';
import 'providers.dart';

class Basicdetailstwo extends StatefulWidget {
 

  const Basicdetailstwo(
      {
      super.key});

  @override
  State<Basicdetailstwo> createState() => _BasicdetailstwoState();
}

class _BasicdetailstwoState extends State<Basicdetailstwo> {
 
String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Providers>(create: (context) => Providers(),child:
      SingleChildScrollView(
        child: Accordion(contentBorderColor: Colors.white, children: [
          AccordionSection(
              isOpen: true,
              
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: const Color(0xFF367B86), size: 25.w),
              headerBackgroundColor: Colors.white,
              header: medium.reg20(
                  text: 'Basic Details', color: const Color(0xFF367B86)),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Consumer<Providers>(builder:(context, imagepickerprovider, child) => 
                     Row(
                      children: <Widget>[
                        imagepickerprovider.image == null
                            ? Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                clipBehavior: Clip.antiAlias, 
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFE3E3E3)),
                                child: const Icon(
                                  Icons.person_2_outlined,
                                  color: Color(0xFF3E3E3E),
                                ),
                              )
                            : Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFE3E3E3)),
                                child: ClipOval(
                                  child: Image.file(
                                    imagepickerprovider.image!,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                        Gap(14.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.blue,
                                    context: context,
                                    builder: (builder) {
                                      return SizedBox(
                                        height:
                                           300,
                                        width:300,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      imagepickerprovider.pickimage(
                                                          ImageSource.gallery);
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: const Icon(
                                                        size: 60, Icons.image)),
                                                const Text('Gallery')
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      imagepickerprovider.pickimage(ImageSource.camera);
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: const Icon(
                                                        size: 60,
                                                        Icons.camera_alt)),
                                                const Text('Camera')
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                height: 32.h,
                                width: 124.w,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: const Color(0xFFAEAEAE)),
                                    borderRadius: BorderRadius.circular(26.w)),
                                child: Center(
                                    child: medium.reg14(
                                        text: 'Upload Image', color: Colors.black)),
                              ),
                            ),
                            Gap(12.h),
                            medium.reg12(
                                text:
                                    'At least 800 x 800 recommended,\nJPG or PNG is allowed',
                                color: const Color(0xFF848484))
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          medium.reg18(
                              text: 'Name',
                              color: const Color(0xFF474747)),
                          
                          Row(
                            children: <Widget>[
                               Checkboxwidget(
                                  backgroundcolour: Colors.white,
                                  colorafterclicked: const Color(0xFF367B86),
                                  valuechanged: (bool ischecked){},
                                  ),
                              Gap(9.w),
                              medium.reg16(
                                  text: 'Is Existing Customer',
                                  color: const Color(0xFF474747))
                            ],
                          )
                        ],
                      ),
                      Gap(15.h),
                      Container(
                        height: 54.h,
                        
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFC1C1C1)),
                            borderRadius: BorderRadius.circular(16.w)),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.only(left: 20.w, bottom: 15.h),
                                hintText:'Name',
                                hintStyle: TextStyle(
                                    color: const Color(0xFFA1A1A1),
                                    fontFamily: 'GilroyRegular',
                                    fontSize: 18.sp)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      medium.reg18(text: 'Type', color: const Color(0xFF474747)),
                      Gap(23.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                           Radiobuttonwidget(
                            buttontitle: 'Both',
                            optionno: 'option1',
                            onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });},
                            groupValue:  _selectedOption,
                          ),
                          Gap(20.w),
                           Radiobuttonwidget(
                            buttontitle: 'Vendor',
                            optionno: 'option2',
                            onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });},
                            groupValue:  _selectedOption,
                          ),
                          Gap(20.w),
                           Radiobuttonwidget(
                            buttontitle: 'Customer',
                            optionno: 'option3',
                            onChanged: (String? value) {
                                setState(() {
                                  _selectedOption = value;
                                });},
                            groupValue:  _selectedOption,
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(28.h),
                  medium.reg18(
                      text: 'Phone No',
                      color: const Color(0xFF474747)),
                  Gap(15.h),
                  Container(
                    height: 54.h,
                   
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFC1C1C1)),
                        borderRadius: BorderRadius.circular(16.w)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 20.w, bottom: 15.h),
                            hintText: 'Phone No 1',
                            hintStyle: TextStyle(
                                color: const Color(0xFFA1A1A1),
                                fontFamily: 'GilroyRegular',
                                fontSize: 18.sp)),
                      ),
                    ),
                  ),
                  Gap(15.h),
                   Container(
                    height: 54.h,
                    
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFC1C1C1)),
                        borderRadius: BorderRadius.circular(16.w)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 20.w, bottom: 15.h),
                            hintText: 'Phone No 2',
                            hintStyle: TextStyle(
                                color: const Color(0xFFA1A1A1),
                                fontFamily: 'GilroyRegular',
                                fontSize: 18.sp)),
                      ),
                    ),
                  ),
                  Gap(20.h),
                  medium.reg18(
                      text: 'Email',
                      color: const Color(0xFF474747)),
                  
                  Gap(15.h),
                  Container(
                    height: 54.h,
                   
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFC1C1C1)),
                        borderRadius: BorderRadius.circular(16.w)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 20.w, bottom: 15.h),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: const Color(0xFFA1A1A1),
                                fontFamily: 'GilroyRegular',
                                fontSize: 18.sp)),
                      ),
                    ),
                  ),
                  
                 
                ],
              ))
        ]),
      ),
    );
  }
}
