import 'package:flutter/material.dart';
import 'main_Navigation.dart' hide MainNavigation;
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/main_Navigation.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_border/dotted_border.dart';

class chef_Food_Details extends StatefulWidget {
  const chef_Food_Details({super.key});

  @override
  State<chef_Food_Details> createState() => _chef_Food_DetailsState();
}

class _chef_Food_DetailsState extends State<chef_Food_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffECF0F4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          left: 17.w,
                          right: 18.w,
                          bottom: 20.h,
                        ),
                        child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: AppText(
                      text: 'Food Details',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  AppText(
                    text: 'EDIT',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xffFB6D3A),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h, left: 24.w),
              child: Container(
                height: 210.h,
                width: 327.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xff98A8B8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, bottom: 16.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(61.r),
                          color: Color(0xffFFFFFF).withOpacity(0.8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 12.w,
                          ),
                          child: AppText(
                            text: 'Breakfast',
                            font: GoogleFonts.sen,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xff32343E),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Padding(
                      padding: EdgeInsets.only(bottom: 21.h),
                      child: Row(
                        children: [
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 10.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Padding(
                      padding: EdgeInsets.only(right: 12.w, bottom: 16.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(61.r),
                          color: Color(0xffFFFFFF).withOpacity(0.8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 12.w,
                          ),
                          child: AppText(
                            text: 'Delivery',
                            font: GoogleFonts.sen,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xff32343E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 13.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: 'Chicken Thai Biryani',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: Color(0xff32343E),
                  ),
                  AppText(
                    text: '\$60',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: Color(0xff32343E),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 9.h),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 4.w),
                  AppText(
                    text: 'Kentucky 39495',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Color(0xffAFAFAF),
                  ),
                  Spacer(),
                  Icon(Icons.star, color: Color(0xffFB6D3A)),
                  SizedBox(width: 4.w),
                  AppText(
                    text: '4.9',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: Color(0xffFB6D3A),
                  ),
                  SizedBox(width: 4.w),
                  AppText(
                    text: '(10 Reviews)',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xffAFAFAF),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
              child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: AppText(
                text: 'INGREDIENTS',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 12.h, right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IngredientItem2(
                    containerColor: Color(0xffFFEBE4),
                    imagePath: 'assets/salt.png',
                    text: 'Salt',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/chicken.png',
                      text: 'Chicken',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/onion.png',
                      text: 'Onion',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/garlic.png',
                      text: 'Garlic',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/pepper.png',
                      text: 'Peppers',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 30.h, right: 24.w),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/ginger.png',
                      text: 'Ginger',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/brocolli.png',
                      text: 'Brocolli',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/orange.png',
                      text: 'Orange',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: IngredientItem2(
                      containerColor: Color(0xffFFEBE4),
                      imagePath: 'assets/nut.png',
                      text: 'Nut',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
              child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
              child: AppText(
                text: 'Description',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14.h, left: 24.w, right: 24.w, bottom: 24.h),
              child: AppText(
                text: '''Lorem ipsum dolor sit amet, consetdur Maton adipiscing elit. Bibendum in vel, mattis et amet dui mauris turpis.''',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: Color(0xff23243E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
