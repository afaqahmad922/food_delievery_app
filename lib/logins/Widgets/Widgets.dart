import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSearchField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final Color color;

  const AppSearchField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.color,
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
            fillColor: color,
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


class CategoryButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;

  const CategoryButton ({
    super.key,
    required this.backgroundColor,
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(39.r),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w, bottom: 8.h),
            child: Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(39.r),
                color: Color(0xff98A8B9),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 21.w, top: 21.h, bottom: 22.h),
            child: Center(child: AppText(text: text, font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 14.sp, color: Color(0xff32343E))),
          ),
        ],
      ),
    );
  }
}


class RestaurantCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String deliveryText;
  final String time;

  const RestaurantCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.deliveryText,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 137.h,
          decoration: BoxDecoration(
            color: const Color(0xff98A8B8),
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),

        SizedBox(height: 8.h),

        Text(
          title,
          style: GoogleFonts.sen(
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
            color: Colors.black,
          ),
        ),

        SizedBox(height: 5.h),

        Text(
          subtitle,
          style: GoogleFonts.sen(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: const Color(0xffA0A5BA),
          ),
        ),

        SizedBox(height: 16.h),

        Row(
          children: [
            const Icon(Icons.star_border, color: Color(0xffFF7622)),
            SizedBox(width: 5.w),
            Text(
              rating,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),

            SizedBox(width: 24.w),

            const Icon(Icons.fire_truck_outlined, color: Color(0xffFF7622)),
            SizedBox(width: 5.w),
            Text(
              deliveryText,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),

            SizedBox(width: 24.w),

            const Icon(Icons.watch_later_outlined, color: Color(0xffFF7622)),
            SizedBox(width: 5.w),
            Text(
              time,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class FoodCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;

  const FoodCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 12.w),
            child: Container(
              height: 104.h,
              width: 122.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xff98A8B8),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 5.76.h),
            child: AppText(
              text: title,
              font: GoogleFonts.sen,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: const Color(0xff32343E),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 7.24.h, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: subtitle,
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xff646982),
                ),
                SizedBox(width: 25.w,),
                AppText(
                  text: '\$$price',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: const Color(0xff32343E),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String text;   // 👈 ONLY this is editable

  const CategoryItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: const Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 20,
                    spreadRadius: 0,
                    offset: const Offset(1, 12),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                  bottom: 21.h,
                  left: 13.w,
                  right: 13.w,
                ),
                child: Container(
                  height: 81.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff98A8B8),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.h),
              child: AppText(
                text: text,   // 👈 changed here
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: const Color(0xff32343E),
              ),
            ),
          ],
        )
      ],
    );
  }
}


class CategoryChip extends StatelessWidget {
  final String text;

  const CategoryChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(33.r),
        border: Border.all(
          color: const Color(0xffEDEDED),
          width: 2.w,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 14,
          bottom: 13,
        ),
        child: AppText(
          text: text,   // 👈 Dynamic text here
          font: GoogleFonts.sen,
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}

class RestaurantRow extends StatelessWidget {
  final String title;
  final String rating;

  const RestaurantRow({
    Key? key,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w,),
          child: Container(
            height: 50.h,
            width: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xff98A8B8),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only( left: 10.w),
              child: Text(
                title,
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 4.h),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_border_purple500_outlined,
                    color: Color(0xffFF7622),
                  ),
                  SizedBox(width: 4.w,),
                  Text(
                    rating,
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xff181C2E),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class FoodCard1 extends StatelessWidget {
  final String title;
  final String subtitle;

  const FoodCard1({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 8),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 12.w),
            child: Container(
              height: 84.h,
              width: 122.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xff98A8B8),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 5.76.h),
            child: AppText(
              text: title,
              font: GoogleFonts.sen,
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
              color: const Color(0xff32343E),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 4.h, bottom: 15.h, right: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: subtitle,
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xff646982),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class FoodCard2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;

  const FoodCard2({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.w, right: 12.w),
            child: Container(
              height: 84.h,
              width: 122.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xff98A8B8),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 15.h),
            child: Text(
              title,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
                color: const Color(0xff32343E),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 8.h),
            child: Text(
              subtitle,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: const Color(0xff32343E),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 12.w,
              top: 8.h,
              bottom: 15.h,
            ),
            child: Row(
              children: [
                Text(
                  price,
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: const Color(0xff646982),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, left: 70.w, right: 10.w),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffF58D1D),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}





