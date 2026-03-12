import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class all_Foods extends StatefulWidget {
  const all_Foods({super.key});

  @override
  State<all_Foods> createState() => _all_FoodsState();
}

class _all_FoodsState extends State<all_Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
              child: FoodCard3(name: 'Chicken Bhuna', price: '30'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
              child: FoodCard3(name: 'Mazalichiken Halim', price: '25'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
              child: FoodCard3(name: 'Chai', price: '5'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
              child: FoodCard3(name: 'Paratha', price: '5'),
            ),
          ],
        ),
      ),
    );
  }
}
