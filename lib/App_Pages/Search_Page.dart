import 'package:figma_to_flutter_2/App_Pages/food_Burgers.dart';
import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Color(0xffECF0F4),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 58.h, left: 16.w),
                  child: AppText(text: 'Search', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 24.w, top: 54.h),
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff181C2E),
                    ),
                    child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: AppSearchField(hintText: '🔎 Search dishes, restaurants', color: Color(0xffF6F6F6), suffixIcon: Icons.cancel_outlined,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 24.h),
              child: AppText(text: 'Recent Keywords', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>food_Burgers()));
                          },
                          child: CategoryChip(text: 'Burger')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CategoryChip(text: 'Pizza'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CategoryChip(text: 'Chips'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 24.w),
                      child: CategoryChip(text: 'Cold Drinks'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 32.h),
              child: AppText(text: 'Suggested Resturants', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 23.h),
              child: RestaurantRow(title: 'Pansi Resturant', rating: '4.7'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h, left: 24.w, right: 24.w),
              child: Divider(
                color: const Color(0xffEBEBEB),
                thickness: 1.5.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: RestaurantRow(title: 'American Spicy Burger Shop', rating: '4.3'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h, left: 24.w, right: 24.w),
              child: Divider(
                color: const Color(0xffEBEBEB),
                thickness: 1.5.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: RestaurantRow(title: 'Cafenio Coffee Club', rating: '4.0'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h, left: 24.w, right: 24.w),
              child: Divider(
                color: const Color(0xffEBEBEB),
                thickness: 1.5.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 32.h),
              child: AppText(text: 'Popular Fast Food', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 27.h),
                      child: FoodCard1(title: 'european Pizza', subtitle: 'Uttora Coffe House'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, top: 27.h),
                      child: FoodCard1(title: 'Buffalo Pizza', subtitle: 'Cafenio Coffee Club'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
