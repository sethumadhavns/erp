import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/radio_button.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:gap/gap.dart';
import 'providers.dart';

class BasicDetailsTwo extends StatefulWidget {
  ///Used in Lead page when adding a new Lead.
  ///[1]Contact icon to upload image
  ///[2][DropDown] is used to for Name textfield
  ///[3][RadioButton] is used
  
  ///[5][DropDown] is used to for Phone No textfield
  ///[6]two textfield are used for phone No
  ///[7][DropDown] is used to for Email No textfield
  const BasicDetailsTwo({super.key});

  @override
  State<BasicDetailsTwo> createState() => _BasicDetailsTwoState();
}

class _BasicDetailsTwoState extends State<BasicDetailsTwo> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Providers>(
      create: (context) => Providers(),
      child: SingleChildScrollView(
        child: Accordion(contentBorderColor: Colors.white, children: [
          AccordionSection(
              isOpen: true,
              rightIcon: SvgPicture.asset(
               images. dropDownArrow,
                color: colors.primaryGreenColor,
              ),
              headerBackgroundColor: Colors.white,
              header: medium.reg20(
                  text: 'Basic Details', color: colors.primaryGreenColor),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Consumer<Providers>(
                    builder: (context, imagePicker, child) => Row(
                      children: <Widget>[
                        imagePicker.image == null
                            ? Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                clipBehavior: Clip.antiAlias,
                                decoration:  BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColor),
                                child: Center(
                                    child: SvgPicture.asset(
                                  images.contactIcon,
                                  height: 15.66.h,
                                  width: 19.02.w,
                                  color: colors.imageIconBackgroundColor,
                                )))
                            : Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColor),
                                child: ClipOval(
                                  child: Image.file(
                                    imagePicker.image!,
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
                                        height: 300,
                                        width: 300,
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
                                                      imagePicker
                                                          .pickImage(ImageSource
                                                              .gallery);
                                                      Navigator.of(context)
                                                          .pop();
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
                                                      imagePicker
                                                          .pickImage(ImageSource
                                                              .camera);
                                                      Navigator.of(context)
                                                          .pop();
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
                                    border: Border.all(
                                        color: colors.borderColorOfContainer),
                                    borderRadius: BorderRadius.circular(26.w)),
                                child: Center(
                                    child: medium.reg14(
                                        text: 'Upload Image',
                                        color: Colors.black)),
                              ),
                            ),
                            Gap(12.h),
                            medium.reg12(
                                text:
                                    'At least 800 x 800 recommended,\nJPG or PNG is allowed',
                                color: colors.instructionTextColor)
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const DropDown(
                        title: 'Name',
                        hintText: 'Name',
                      ),
                      Gap(20.h),
                      medium.reg18(
                          text: 'Type', color: colors.headingTextColor),
                      Gap(23.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RadioButton(
                            buttonTitle: 'Both',
                            optionNo: 'option1',
                            onChanged: (String? value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                            groupValue: selectedOption,
                          ),
                          Gap(20.w),
                          RadioButton(
                            buttonTitle: 'Vendor',
                            optionNo: 'option2',
                            onChanged: (String? value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                            groupValue: selectedOption,
                          ),
                          Gap(20.w),
                          RadioButton(
                            buttonTitle: 'Customer',
                            optionNo: 'option3',
                            onChanged: (String? value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                            groupValue: selectedOption,
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(28.h),
                  const DropDown(
                    title: 'Phone No',
                    hintText: 'Phone No 1',
                  ),
                  Gap(15.h),
                  const DropDown(
                    hintText: 'Phone No 2',
                  ),
                  Gap(20.h),
                  const DropDown(
                    title: 'Email',
                    hintText: 'Email',
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
