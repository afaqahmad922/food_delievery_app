import 'package:figma_to_flutter_2/App_Pages/cart_Pages/edit_Cart.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/Revenue%20Chart.dart';
import 'package:figma_to_flutter_2/Homes/Home%20V.2.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class seller_Dash_Home extends StatefulWidget {
  const seller_Dash_Home({super.key});

  @override
  State<seller_Dash_Home> createState() => _seller_Dash_HomeState();
}

class _seller_Dash_HomeState extends State<seller_Dash_Home> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
      child: Scaffold(
        backgroundColor: Color(0xffF7F8F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 54.h),
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFFFFF),
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 59.h, left: 18.w),
                        child: AppText(text: 'Deliver to', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 12.sp, color: Color(0xffFC6E2A)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.h, left: 18.w),
                        child: AppText(text: 'Halal Lab office', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff676767)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w,top: 81.h),
                    child: Icon(Icons.arrow_drop_down),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 24.w, top: 54.h),
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff98A8B8),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 24.h, right: 24.w),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: AppText(text: '20', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 50.sp, color: Color(0xff32343E)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h, bottom: 18.h, right: 20.w),
                              child: AppText(text: 'RUNNING ORDERS', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 11.sp, color: Color(0xff838799)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: AppText(text: '05', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 50.sp, color: Color(0xff32343E)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.5.h, bottom: 18.h, right: 20.w),
                              child: AppText(text: 'ORDERS REQUEST', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 11.sp, color: Color(0xff838799)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                
              RevenueCard(),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, top: 14.h),
                            child: AppText(text: 'Reviews', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only( top: 14.h, right: 16.w),
                            child: AppText(text: 'See All Reviews', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffFB6D3A)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 23.4.h, left: 16.w, bottom: 10.h),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Color(0xffFB6D3A),),
                            Padding(
                              padding: EdgeInsets.only(left: 3.3.w),
                              child: AppText(text: '4.9', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 21.sp, color: Color(0xffFB6D3A)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.16.w),
                              child: AppText(text: '20 Total Reviews', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0xffFFFFFF)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, top: 14.h),
                            child: AppText(text: 'Popular Items this Week', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only( top: 14.h, right: 16.w),
                            child: AppText(text: 'See All', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffFB6D3A)),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only( top: 14.h, left: 16.w, bottom: 14.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150.w,
                                height: 153.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.31.r),
                                  color: Color(0xff98A8B8),
                                ),
                              ),
                              SizedBox(width: 14.w,),
                              Container(
                                width: 150.w,
                                height: 153.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.31.r),
                                  color: Color(0xff98A8B8),
                                ),
                              ),
                              SizedBox(width: 14.w,),
                              Container(
                                width: 150.w,
                                height: 153.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.31.r),
                                  color: Color(0xff98A8B8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
