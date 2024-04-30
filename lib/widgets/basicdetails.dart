import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';
import 'package:erp_widget_packages/widgets/radiobutton.dart';
import 'package:erp_widget_packages/widgets/textfieldandheading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:gap/gap.dart';
import 'providers.dart';

class BasicDetails extends StatefulWidget {
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
              rightIcon:SvgPicture.asset(images.dropDownArrow,color:colors. primaryGreenColour,),
              headerBackgroundColor: Colors.white,
              header: medium.reg20(
                  text: 'Basic Details', color: colors.primaryGreenColour),
              headerPadding: const EdgeInsets.symmetric(horizontal: 15),
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
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.imageIconBackgroundColour),
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
                                    color:colors. imageIconBackgroundColour),
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
                                        color:colors. borderColourOfContainer),
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
                                color: colors.instructionTextColour)
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     medium.reg18(
                  //         text: widget.textfield1,
                  //         color: const Color(0xFF474747)),

                  //     Row(
                  //       children: <Widget>[
                  //          Checkboxwidget(
                  //             backgroundcolour: Colors.white,
                  //             colorafterclicked: const Color(0xFF367B86),
                  //             valuechanged: (ischecked){},),
                  //         Gap(9.w),
                  //         medium.reg16(
                  //             text: 'Is Existing Customer',
                  //             color: const Color(0xFF474747))
                  //       ],
                  //     )
                  //   ],
                  // ),
                  const TextFieldAndHeading(
                    title: 'Name',
                    hintText: 'Name',
                  ),
                  Gap(15.h),

                  Gap(20.h),
                  medium.reg18(text: 'Type', color: const Color(0xFF474747)),
                  Gap(23.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RadioButtonWidget(
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
                      RadioButtonWidget(
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
                  const TextFieldAndHeading(
                    title: 'Company Name',
                    hintText: 'Company Name',
                  ),

                  Gap(20.h),

                  const TextFieldAndHeading(
                    title: 'Phone No',
                    hintText: 'Phone No',
                  ),
                  Gap(20.w),

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
