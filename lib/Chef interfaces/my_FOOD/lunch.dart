import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class lunch extends StatefulWidget {
  const lunch({super.key});

  @override
  State<lunch> createState() => _lunchState();
}

class _lunchState extends State<lunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h),
            child: AppText(text: 'Total 03 items', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff9C9BA6)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
            child: FoodCard3(name: 'Chicken Thai Biriyani', price: '60'),
          ),

        ],
      ),
    );
  }
}
