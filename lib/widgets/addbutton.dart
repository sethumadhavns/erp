import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PackageImages {
  
//svg images of icons used in package
String plus = 'assets/images/add.svg';
String dropDownArrow = 'assets/images/dropdownarrow.svg';
String edit = 'assets/images/edit.svg';
String deleteBin = 'assets/images/delete.svg';
String contactIcon = 'assets/images/contacticon.svg';
String sortIcon = 'assets/images/sort.svg';
String searchIcon = 'assets/images/search.svg';
String arrowIcon = 'assets/images/arrow.svg';
String iconOneOfDropBar = 'assets/images/iconone.svg';
String iconTwoOfDropBar  = 'assets/images/icontwo.svg';
String iconThreeOfDropBar  = 'assets/images/iconthree.svg';
String iconFourOfDropBar  = 'assets/images/iconfour.svg';
String location  = 'assets/images/locationicon.svg';
String email = 'assets/images/emailicon.svg';
String mobile  = 'assets/images/mobileicon.svg';
String phone  = 'assets/images/phoneicon.svg';
String whatsapp  = 'assets/images/whatsapp.svg';
}
class PackageColors {
 Color primaryGreenColour = const Color(0xFF367B86);
Color boxColour = const Color(0xFFD9D9D9);
Color productNameColour = const Color(0xFF0B0B0B);
Color notificationIconColour = const Color(0xFF799A9F);
Color quatationProductNameColour=  const Color(0xFF161616);
Color quatationProductPriceColour= const Color(0xFF6F6F6F);
Color quatationProductNoOfPieceColour= const Color(0xFF121212);
Color imageIconBackgroundColour= const Color(0xFFE3E3E3);
Color borderColourOfContainer=  const Color(0xFFAEAEAE);
Color instructionTextColour=  const Color(0xFF848484);
Color headingTextColour=  const Color(0xFF474747);
Color checkBoxBorderColour=   const Color(0xFF898989);
Color chipButtonsBackgroundColour=   const Color(0xFF232323); 
Color chipButtonBorderColor=   const Color(0xFFCFD9DB) ;
Color clickableIconColor=    const Color(0xFF62C8A3) ;
Color defaultclickableIconColor=const Color(0xFFB8C3C4);
Color contactNameColor=const Color(0xFF1E1E1E);
Color contactDateColor=const Color(0xFF5D5D5D);
Color contactRemarkColor= const Color(0xFF7C7C7C);
Color followUpOrangeChip= const Color(0xFFF09054);
Color followUpRedChip=  const Color(0xFFF05454);
Color followUpGreenChip=  const Color(0xFF7DF054);
Color newContactChip=  const Color(0xFF8699FF);
Color validityDateChipText=   const Color(0xFF429CAB);
Color validityDateChipBackground=  const Color(0xFF367B86);
Color qualifiedChip=  const Color(0xFF8699FF);
Color approvedChip=  const Color(0xFF5BB73A);
Color cancelledChip=  const Color(0xFFF05454);
Color popUpButtonBorder= const Color(0xFFC4D3D6);
Color productDetailsName= const Color(0xFF000000);
Color productDetailsCategory= const Color(0xFF5B5B5B);
Color productDetailsPrice= const Color(0xFF000000);
Color radioButtonTitleColor= const Color(0xFF0D0D0D);
Color rectangularButtonColor= const Color(0xFF232323);
Color rectangularButtonTextColor=  Colors.white;

}
// colors used in the package
 PackageColors colors=PackageColors();
     PackageImages images=PackageImages();


 
class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
 
  Widget build(BuildContext context) {
    
    return IconButton(
        onPressed: () {},
        icon: Container(
          height: 47.14.h,
          width: 47.14.w,
          decoration:  BoxDecoration(
              color:colors.primaryGreenColour, shape: BoxShape.circle),
          child: Center(
              child: SvgPicture.asset(
            images.plus,
            height: 17.05.h,
            width: 17.05.w,
          )),
        ));
  }
}
