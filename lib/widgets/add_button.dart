import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PackageImages {
//svg images of icons used in package
  String plus = 'assets/images/add.svg';
  String dropDownArrow = 'assets/images/dropDownArrow.svg';
  String edit = 'assets/images/edit.svg';
  String deleteBin = 'assets/images/delete.svg';
  String contactIcon = 'assets/images/contactIcon.svg';
  String sortIcon = 'assets/images/sort.svg';
  String searchIcon = 'assets/images/search.svg';
  String arrowIcon = 'assets/images/arrow.svg';
  String iconOneOfDropBar = 'assets/images/iconOne.svg';
  String iconTwoOfDropBar = 'assets/images/iconTwo.svg';
  String iconThreeOfDropBar = 'assets/images/iconThree.svg';
  String iconFourOfDropBar = 'assets/images/iconFour.svg';
  String location = 'assets/images/locationIcon.svg';
  String email = 'assets/images/emailIcon.svg';
  String mobile = 'assets/images/mobileIcon.svg';
  String phone = 'assets/images/phoneIcon.svg';
  String whatsapp = 'assets/images/whatsapp.svg';
   String clock = 'assets/images/clock.svg';
   String tick= 'assets/images/roundTick.svg';
   String contactTwo= 'assets/images/contactTwo.svg';
}

//colors used in this package
class PackageColors {
  Color primaryGreenColor = const Color(0xFF367B86);
   Color dueAmountColor = const Color(0xFF6C6C6C);
  Color boxColor = const Color(0xFFD9D9D9);
  Color productNameColor = const Color(0xFF0B0B0B);
  Color notificationIconColor = const Color(0xFF799A9F);
  Color mainNameColor = const Color(0xFF161616);
  Color quotationProductPriceColor = const Color(0xFF6F6F6F);
  Color quotationProductNoOfPieceColor = const Color(0xFF121212);
  Color imageIconBackgroundColor = const Color(0xFFE3E3E3);
  Color borderColorOfContainer = const Color(0xFFAEAEAE);
  Color instructionTextColor = const Color(0xFF848484);
  Color headingTextColor = const Color(0xFF474747);
  Color checkBoxBorderColor = const Color(0xFF898989);
  Color chipButtonsBackgroundColor = const Color(0xFF232323);
  Color chipButtonBorderColor = const Color(0xFFCFD9DB);
  Color clickableIconColor = const Color(0xFF62C8A3);
  Color defaultIconColor = const Color(0xFFB8C3C4);
  Color contactNameColor = const Color(0xFF1E1E1E);
  Color contactDateColor = const Color(0xFF5D5D5D);
  Color contactRemarkColor = const Color(0xFF7C7C7C);
  Color followUpOrangeChip = const Color(0xFFF09054);
  Color redChip = const Color(0xFFF05454);
  Color followUpGreenChip = const Color(0xFF5BB73A);
   Color backGroundGreenChip = const Color(0xFF7DF054);
  Color newContactChip = const Color(0xFF8699FF);
  Color validityDateChipText = const Color(0xFF429CAB);

  Color qualifiedChip = const Color(0xFF8699FF);
  Color approvedChip = const Color(0xFF5BB73A);
  
  Color popUpButtonBorder = const Color(0xFFC4D3D6);
  Color productDetailsName = const Color(0xFF000000);
  Color productDetailsCategory = const Color(0xFF5B5B5B);
  Color productDetailsPrice = const Color(0xFF5B5B5B);
  Color nameCodeColor = const Color(0xFF0D0D0D);
  Color rectangularButtonColor = const Color(0xFF232323);
  Color rectangularButtonTextColor = Colors.white;
  Color toggleButtonInactiveColor = const Color(0xFFB1B1B1);
  Color toggleButtonActiveColor = const Color(0xFF161616);
  Color containerBorderColor = const Color(0xFFC1C1C1);
  Color dropDownArrowColor = const Color(0xFF303030);
  Color hintTextColor = const Color(0xFFA1A1A1);
  Color hyphenColor = const Color(0xFF909090);
  Color searchHintText = const Color(0xFF939393);
  Color searchIconColor = const Color(0xFF777777);
  Color circleContainerColor = const Color(0xFFEDEDED);
  Color approvedChipBlue = const Color(0xFF3A7BB7);
  Color roundIconBorder =  const Color(0xFFDADADA);
}

PackageColors colors = PackageColors();
PackageImages images = PackageImages();

class AddButton extends StatelessWidget {
  ///returns a circular button with plus sign in it
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(padding: const EdgeInsets.all(0),
        onPressed: () {},
        icon: Container(
          height: 47.14.h,
          width: 47.14.w,
          decoration: BoxDecoration(
              color: colors.primaryGreenColor, shape: BoxShape.circle),
          child: Center(
              child: SvgPicture.asset(
            images.plus,
            height: 17.05.h,
            width: 17.05.w,
          )),
        ));
  }
}
