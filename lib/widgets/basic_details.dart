import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/add_button.dart';
import 'package:erp_widget_packages/widgets/radio_button.dart';
import 'package:erp_widget_packages/widgets/dropdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:gap/gap.dart';
import 'providers.dart';

class BasicDetails extends StatefulWidget {
  ///Used in Lead page when adding a new Lead.
  ///[1]Contact icon to upload image
  ///[2][DropDown] is used to for Name textfield
  ///[3][RadioButton] is used
  ///[4][DropDown] is used to for Company Name textfield
  ///[5][DropDown] is used to for Phone No textfield
  ///[6][DropDown] is used to for Email No textfield
  const BasicDetails({super.key});

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
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
                images.dropDownArrow,
                color: colors.primaryGreenColor,
              ),
              headerBackgroundColor: Colors.white,
              header: medium.reg20(
                  text: 'Basic Details', color: colors.primaryGreenColor),
              headerPadding: const EdgeInsets.symmetric(horizontal: 15),
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
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColor),
                                child: Center(
                                    child: SvgPicture.asset(
                                  images.contactIcon,
                                  height: 15.66.h,
                                  width: 19.02.w,
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
                                                      imagePicker.pickImage(
                                                          ImageSource.gallery);
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
                                                      imagePicker.pickImage(
                                                          ImageSource.camera);
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
                  const DropDown(
                    title: 'Name',
                    hintText: 'Name',
                  ),
                  Gap(15.h),
                  Gap(20.h),
                  medium.reg18(text: 'Type', color: colors.headingTextColor),
                  Gap(23.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RadioButton(
                        buttonTitle: 'Organization',
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
                        buttonTitle: 'Individual',
                        optionNo: 'option2',
                        onChanged: (String? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                        groupValue: selectedOption,
                      )
                    ],
                  ),
                  Gap(28.h),
                  const DropDown(
                    title: 'Company Name',
                    hintText: 'Company Name',
                  ),
                  Gap(20.h),
                  const DropDown(
                    title: 'Phone No',
                    hintText: 'Phone No',
                  ),
                  Gap(20.w),
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
