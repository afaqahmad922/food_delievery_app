import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class location_access extends StatefulWidget {
  const location_access({super.key});

  @override
  State<location_access> createState() => _location_accessState();
}

class _location_accessState extends State<location_access> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 176.h),
            child: Center(
              child: Container(
                width: 206.w,
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.r),
                  color: Color(0xff98A8B8),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 93.h, left: 24.w, right: 24.w),
            child: SignButton(text: 'ACCESS LOCATION  \u{1F4CD}'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36.5.h, left: 16.w, right: 16.w),
            child: Center(
              child: AppText(
                text:
                    'DFOOD WILL ACCESS YOUR LOCATION\nONLY WHILE USING THE APP',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Color(0xff646982),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
