import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/radiobutton.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:gap/gap.dart';
import 'providers.dart';

class BasicDetailsTwo extends StatefulWidget {
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
                color: colors.primaryGreenColour,
              ),
              headerBackgroundColor: Colors.white,
              header: medium.reg20(
                  text: 'Basic Details', color: colors.primaryGreenColour),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Consumer<Providers>(
                    builder: (context, imagepickerprovider, child) => Row(
                      children: <Widget>[
                        imagepickerprovider.image == null
                            ? Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                clipBehavior: Clip.antiAlias,
                                decoration:  BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColour),
                                child: Center(
                                    child: SvgPicture.asset(
                                  images.contactIcon,
                                  height: 15.66.h,
                                  width: 19.02.w,
                                  color: colors.imageIconBackgroundColour,
                                )))
                            : Container(
                                height: 78.5.h,
                                width: 78.5.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColour),
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
                                                      imagepickerprovider
                                                          .pickimage(ImageSource
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
                                                      imagepickerprovider
                                                          .pickimage(ImageSource
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
                                        color: const Color(0xFFAEAEAE)),
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
                      const TextFieldAndHeading(
                        title: 'Name',
                        hintText: 'Name',
                      ),
                      Gap(20.h),
                      medium.reg18(
                          text: 'Type', color: const Color(0xFF474747)),
                      Gap(23.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RadioButtonWidget(
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
                          RadioButtonWidget(
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
                          RadioButtonWidget(
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
                  const TextFieldAndHeading(
                    title: 'Phone No',
                    hintText: 'Phone No 1',
                  ),
                  Gap(15.h),
                  const TextFieldAndHeading(
                    hintText: 'Phone No 2',
                  ),
                  Gap(20.h),
                  const TextFieldAndHeading(
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
