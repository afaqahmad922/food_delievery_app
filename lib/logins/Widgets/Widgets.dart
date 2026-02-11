import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class OtpFields extends StatelessWidget {
  final int length;
  final double boxSize;
  final Color backgroundColor;

  const OtpFields({
    super.key,
    this.length = 4,
    this.boxSize = 60,
    this.backgroundColor = const Color(0xffF0F5FA),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        length,
            (index) => Container(
          width: boxSize,
          height: boxSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number, // numeric keyboard
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // only digits allowed
            ],
            maxLength: 1,
            decoration: const InputDecoration(
              counterText: "",
              border: InputBorder.none,
            ),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

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
  final TextAlign? textAlign;

  const AppText({
    super.key,
    required this.text,
    required this.font,
    required this.fontWeight,
    required this.fontSize,
    required this.color,
    this.decoration,
    this.textAlign,
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
      ),textAlign: textAlign ?? TextAlign.start,
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
