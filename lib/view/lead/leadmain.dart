import 'package:erp_widget_packages/erp_widget_packages.dart';
import 'package:erp_widget_packages/widgets/clickableicons.dart';
import 'package:erp_widget_packages/widgets/contactdetails.dart';
import 'package:erp_widget_packages/widgets/searchwidget.dart';
import 'package:erp_widget_packages/widgets/sortbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:erp_widget_packages/widgets/addbutton.dart';

class Leadmain extends StatefulWidget {
  const Leadmain({super.key});

  @override
  State<Leadmain> createState() => _LeadmainState();
}

class _LeadmainState extends State<Leadmain> {
  String selectedicon = 'iconone';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF0F6F4),
        leadingWidth: 40.32.w,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset(
            'assets/images/appbarlead.svg',
            height: 667.24.h,
            width: 26.32.w,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/search.svg',
                height: 23.33.h,
                width: 23.33.w,
                color: Colors.black,
              ),
              Gap(28.78.w),
              SvgPicture.asset(
                'assets/images/bell.svg',
                height: 23.33.h,
                width: 23.33.w,
                color: Colors.black,
              ),
              Gap(20.w),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              medium.reg36(text: 'Leads'),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 57.09.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(70.w)),
                      child: const Searchwidget(),
                    ),
                  ),
                  Gap(10.w),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.w)),
                      child: const Sortbutton()),
                ],
              ),
              Gap(20.91.h),
              ListView.builder(shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: const Contactdetails(
                          name: 'Jesta',
                          email: 'demo@gmail.com',
                          landphone: '0187 2551998',
                          whatsapp: true,
                          call: true,
                          location: 'Kerala,India',

                        
                          ),
                    );
                  }),
              Gap(32.6.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Addbutton(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16.w)),
          child: BottomAppBar(
            color: const Color(0xFF232323),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Row(
                children: <Widget>[
                  Clickableicons(
                      icon: 'iconone',
                      isselected: selectedicon == 'iconone',
                      oniconselected: (icon) {
                        setState(() {
                          selectedicon = icon;
                        });
                      }),
                  Gap(40.w),
                  Clickableicons(
                      icon: 'icontwo',
                      isselected: selectedicon == 'icontwo',
                      oniconselected: (icon) {
                        setState(() {
                          selectedicon = icon;
                        });
                      }),
                  Gap(40.w),
                  Clickableicons(
                      icon: 'iconthree',
                      isselected: selectedicon == 'iconthree',
                      oniconselected: (icon) {
                        setState(() {
                          selectedicon = icon;
                        });
                      }),
                  Gap(40.w),
                  Clickableicons(
                      icon: 'iconfour',
                      isselected: selectedicon == 'iconfour',
                      oniconselected: (icon) {
                        setState(() {
                          selectedicon = icon;
                        });
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
