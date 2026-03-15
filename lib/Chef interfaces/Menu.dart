import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class menu1 extends StatefulWidget {
  const menu1({super.key});

  @override
  State<menu1> createState() => _menuState();
}

class _menuState extends State<menu1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 271.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
              color: Color(0xffFF7622),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffECF0F4),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 6.h),
                        child: AppText(
                          text: 'My Profile',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: AppText(
                      text: 'Available Balance',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  AppText(
                    text: '\$500.00',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w700,
                    fontSize: 40.sp,
                    color: Color(0xffFFFFFF),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Color(0xffFFFFFF),
                        width: 2.w,
                      )
                    ),
                    child:Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                      child: AppText(
                        text: 'Withdraw',
                        font: GoogleFonts.sen,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 25.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: ProfileOptionTile(icon: Icons.person, text: 'Personal Info', iconColor: Color(0xff369BFF),),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 15.h, bottom: 15.h),
                      child: ProfileOptionTile(icon: Icons.settings, text: 'Setting', iconColor: Color(0xff4B33DFB),),
                    ),
                  ],
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: ProfileOptionTile(icon: Icons.local_atm_outlined, text: 'Withdraw History', iconColor: Color(0xff369BFF),),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 15.h, bottom: 15.h),
                      child: ProfileOptionTile(icon: Icons.edit_document, text: 'Number of Orders', iconColor: Color(0xff4B33DFB),),
                    ),
                  ],
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                      child: ProfileOptionTile(icon: Icons.rate_review_sharp, text: 'User Reviews', iconColor: Color(0xff369BFF),),
                    ),
                  ],
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                      child: ProfileOptionTile(icon: Icons.logout_outlined, text: 'Logout', iconColor: Color(0xff369BFF),),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
