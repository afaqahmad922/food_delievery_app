import 'package:figma_to_flutter_2/Profile%20Pages/Address.dart';
import 'package:figma_to_flutter_2/Profile%20Pages/Personal%20Profiles.dart';
import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                        left: 17.w,
                        right: 18.w,
                        bottom: 20.h,
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: AppText(
                      text: 'Profile',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                        left: 17.w,
                        right: 18.w,
                        bottom: 20.h,
                      ),
                      child: Icon(Icons.more_horiz, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14.w, top: 24.w),
                  child: Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF8822226).withOpacity(0.15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, top: 22.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: 'Vishal Khadok', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff32343E)),
                      SizedBox(height: 8.h,),
                      AppText(text: 'I Love Fast Food', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F8FA),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>personal_Profiles()));
                          },
                          child: ProfileOptionTile(icon: Icons.person_2_outlined, text: 'Personal Info', iconColor: Color(0xffFB6F3D),)),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>address()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.h, top: 16.h),
                        child: ProfileOptionTile(icon: Icons.map_outlined, text: 'Addresses', iconColor: Color(0xff413DFB),),
                      ),
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF6F8FA),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: ProfileOptionTile(icon: Icons.shopping_cart, text: 'Cart', iconColor: Color(0xff369BFF),),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 16.h),
                        child: ProfileOptionTile(icon: Icons.favorite_outline, text: 'Favourite', iconColor: Color(0xff4B33DFB),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: ProfileOptionTile(icon: Icons.notification_important_rounded, text: 'Notifications', iconColor: Color(0xffFFAA2A),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h, top: 16.h),
                        child: ProfileOptionTile(icon: Icons.payment_outlined, text: 'payment Method', iconColor: Color(0xff369BFF),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF6F8FA),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: ProfileOptionTile(icon: Icons.question_mark_outlined, text: 'Faqs', iconColor: Color(0xffFB6D3A),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: ProfileOptionTile(icon: Icons.rate_review_outlined, text: 'User Reviews', iconColor: Color(0xff2AE1E1),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h, top: 16.h),
                        child: ProfileOptionTile(icon: Icons.settings, text: 'Settings', iconColor: Color(0xff413DFB),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h, bottom: 29.h),
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF6F8FA),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        child: ProfileOptionTile(icon: Icons.logout_outlined, text: 'Logout', iconColor: Color(0xffFFB4A59),),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
