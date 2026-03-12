import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class dinner extends StatefulWidget {
  const dinner({super.key});

  @override
  State<dinner> createState() => _dinnerState();
}

class _dinnerState extends State<dinner> {
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
            child: FoodCard3(name: 'Chicken Bhuna', price: '30'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
            child: FoodCard3(name: 'Mazalichiken Halim', price: '25'),
          ),
        ],
      ),
    );
  }
}
