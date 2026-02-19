import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class food_Details_02 extends StatefulWidget {
  const food_Details_02({super.key});

  @override
  State<food_Details_02> createState() => _food_Details_02State();
}

class _food_Details_02State extends State<food_Details_02> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 876),
      minTextAdapt: true,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 321,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Color(0xff98A8B8),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffECF0F4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                          child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffECF0F4),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                          child: Icon(Icons.favorite, size: 15, color: Color(0xffFF8400)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 24.h),
                child: AppText(text: 'Burger Bistro', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Colors.black),
              ),
      
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 7.h),
                child: Row(
                  children: [
                    Icon(Icons.food_bank_rounded, size: 30, color: Color(0xffFF8400)),
                    AppText(text: 'Rose Garden', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Colors.black),
                  ],
                ),
              ),
      
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 20.75.h, right: 87.w),
                child: Row(
                  children: [
                    Icon(Icons.star_border_purple500_outlined, color: Color(0xffFF7622)),
                    SizedBox(width: 5.w),
                    AppText(text: '4.7', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                    Spacer(),
                    Icon(Icons.fire_truck, color: Color(0xffFF7622)),
                    SizedBox(width: 5.w),
                    AppText(text: 'Free', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                    Spacer(),
                    Icon(Icons.access_time, color: Color(0xffFF7622)),
                    SizedBox(width: 5.w),
                    AppText(text: '20 Min', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                  ],
                ),
              ),
      
              Padding(
                padding: EdgeInsets.only(top: 4.h, left: 24.w),
                child: AppText(
                  text: 'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xffA0A5BA),
                ),
              ),
      
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 40.h),
                    child: AppText(text: 'Size:', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 26.h),
                    child: CircleLabel(text: '10”', backgroundColor: Color(0xffF0F5FA), textColor: Color(0xff121223)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 26.h),
                    child: CircleLabel(text: '14”', backgroundColor: Color(0xffF58D1D), textColor: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 26.h),
                    child: CircleLabel(text: '16”', backgroundColor: Color(0xffF0F5FA), textColor: Color(0xff121223)),
                  ),
                ],
              ),
      
              Padding(
                padding: EdgeInsets.only(top: 20.69.h, left: 24.w),
                child: AppText(text: 'INGREDIENTS', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
              ),
      
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 19.29.h, left: 24.w),
                      child: CircleIconImage(imagePath: 'assets/salt.png')),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 19.29.h, left: 19.w),
                      child: CircleIconImage(imagePath: 'assets/pepper.png')),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 19.29.h, left: 19.w),
                      child: CircleIconImage(imagePath: 'assets/onion.png')),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 19.29.h, left: 19.w),
                      child: CircleIconImage(imagePath: 'assets/garlic.png')),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 19.29.h, left: 19.w, right: 24.w),
                      child: CircleIconImage(imagePath: 'assets/chilli.png')),
                ],
              ),
            ],
          ),
        ),
      
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Container(
            height: 184.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0.r),
                topRight: Radius.circular(24.0.r),
              ),
              color: Color(0xffF0F5FA),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27.h, left: 24.w),
                      child: AppText(text: '\$32', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 28.sp, color: Color(0xff181C2E)),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, right: 24.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: Color(0xff121223),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.exposure_minus_1),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                                child: AppText(text: '2', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Colors.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(Icons.plus_one),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
                  child: SignButton(text: 'ADD TO CART'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
