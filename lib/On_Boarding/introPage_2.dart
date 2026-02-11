import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class introPage_2 extends StatelessWidget {
  const introPage_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 67.w, top: 114.h, right: 68.w),
              child: ReusableBox()
          ),
          Padding(
            padding: EdgeInsets.only(top: 63.h,),
            child: AppText(text: "All your favorites items", font: GoogleFonts.sen, fontWeight: FontWeight.w800, fontSize: 24, color: Colors.black),
          ),
          Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: AppText(text: "Get all your loved foods in one once place,\n you just place the order we do the rest", font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black)
          ),

        ],
      ),
    );
  }
}
