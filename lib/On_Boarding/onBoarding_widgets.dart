import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableBox extends StatelessWidget {
  const ReusableBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 292.h,
      decoration: BoxDecoration(
        color: const Color(0xff98A8B8),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}


class AppText extends StatelessWidget {
  final String text;
  final TextStyle Function({TextStyle? textStyle}) font;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextDecoration? decoration;

  const AppText({
    super.key,
    required this.text,
    required this.font,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: font(
        textStyle: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize.sp,
          color: color,
          decoration: decoration,
        ),
      ),
    );
  }
}


class NextButtonContainer extends StatelessWidget {
  const NextButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 23.h, bottom: 22.h),
        child: Center(
          child: AppText(
            text: "Get Started",
            font: GoogleFonts.sen,
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
