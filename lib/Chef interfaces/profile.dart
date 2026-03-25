import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Row(
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
                        AppText(text: 'Halal Lab', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff32343E)),
                        SizedBox(height: 8.h,),
                        AppText(text: 'Kitchen', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                      ],
                    ),
                  ),
                ],
              ),
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
                        padding: EdgeInsets.only(top: 20.h, bottom: 16.h),
                        child: GestureDetector(
                            onTap: (){
                            },
                            child: ProfileOptionTile(icon: Icons.person_2_outlined, text: 'Personal Info', iconColor: Color(0xffFB6F3D),)),
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
                        padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                        child: ProfileOptionTile(icon: Icons.notification_important_rounded, text: 'Notifications', iconColor: Color(0xffFFAA2A),),
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
