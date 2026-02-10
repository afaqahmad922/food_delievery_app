import 'package:figma_to_flutter_2/On_Boarding/onBoarding_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class AppSearchField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;

  const AppSearchField({
    super.key,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 8.h, right: 24.w),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText, hintStyle: GoogleFonts.sen(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xffA0A5BA),
          ),
            fillColor: Color(0xffF0F5FA),
            filled: true,
            contentPadding: EdgeInsets.only(left: 19.w, top: 23.h, bottom: 22.h),
            suffixIcon: suffixIcon != null
                ? Icon(suffixIcon)
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}

class SignButton extends StatelessWidget {
  final String text;
  const SignButton({super.key,
    required this.text
  });

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
            text: text,
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
