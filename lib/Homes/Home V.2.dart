import 'package:figma_to_flutter_2/Homes/Home%20V.3.dart';
import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeV2 extends StatefulWidget {
  const HomeV2({super.key});

  @override
  State<HomeV2> createState() => _HomeV2State();
}

class _HomeV2State extends State<HomeV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
                      color: Color(0xffECF0F4),
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
                      color: Color(0xff181C2E),
                    ),
                    child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 24.h),
                  child: AppText(text: 'Hey Halal,', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w, top: 24.h),
                  child: AppText(text: 'Good Afternoon!', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: AppSearchField(hintText: '🔎 Search dishes, restaurants', color: Color(0xffF6F6F6),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32.h, left: 24.w),
                  child: AppText(text: 'All Catergories', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 32.h,),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeV3()));
                      },
                      child: AppText(text: 'See All', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Color(0xff32343E))),
                ),
                Padding(padding:  EdgeInsets.only(top: 32.h, right: 24.w),
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.h, top: 20.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: FoodCard(title: 'Pizza', subtitle: 'Starting', price: '70'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: FoodCard(title: 'Burger', subtitle: 'Starting', price: '50'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: FoodCard(title: 'Chai', subtitle: 'Starting', price: '10'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, right: 12.w),
                      child: FoodCard(title: 'Sandwich', subtitle: 'Starting', price: '20'),
                    ),
                  ],
                )
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w),
                  child: AppText(text: 'Open Resturants', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff32343E)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 32.h,),
                  child: AppText(text: 'See All', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Color(0xff32343E)),
                ),
                Padding(padding:  EdgeInsets.only(top: 32.h, right: 24.w),
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
                  child: RestaurantCard(title: 'Rose Garden Restaurant', subtitle: 'Burger - Chiken - Riche - Wings', rating: '4.7', deliveryText: 'Free', time: '20 Min'),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 28.h, left: 24.w, right: 24.w, bottom: 20.w),
                  child: RestaurantCard(title: 'Rose Garden Restaurant', subtitle: 'Burger - Chiken - Riche - Wings', rating: '4.7', deliveryText: 'Free', time: '20 Min'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
