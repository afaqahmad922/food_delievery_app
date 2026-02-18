import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class food_Burgers extends StatefulWidget {
  const food_Burgers({super.key});

  @override
  State<food_Burgers> createState() => _food_BurgersState();
}

class _food_BurgersState extends State<food_Burgers> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 51.h),
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffECF0F4),
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 51.h, left: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(33.r),
                        border: Border.all(color: Color(0xffEDEDED), width: 2.w),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          top: 15,
                          bottom: 16,
                        ),
                        child: Row(
                          children: [
                            AppText(
                              text: 'BURGER',
                              font: GoogleFonts.sen,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5.w),
                            Icon(Icons.arrow_drop_down, color: Color(0xffF58D1D)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 51.h),
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff181C2E),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24.w, top: 51.h, left: 10),
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffECF0F4),
                      ),
                      child: Icon(
                        Icons.settings_input_component_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 24.h),
                child: AppText(
                  text: 'Popular Burgers',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: Color(0xff32343E),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 24.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 24.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 24.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 24.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32.h, left: 24.w),
                    child: AppText(text: 'Open Resturants', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w, bottom: 24.h),
                    child: RestaurantCard(title: 'Rose Garden Restaurant', subtitle: 'Burger - Chiken - Riche - Wings', rating: '4.7', deliveryText: 'Free', time: '20 Min'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
