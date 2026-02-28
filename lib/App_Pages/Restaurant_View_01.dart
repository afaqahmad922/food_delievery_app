import 'package:figma_to_flutter_2/App_Pages/Filter%20Card/filter_Card.dart';
import 'package:figma_to_flutter_2/App_Pages/Food%20Details_02.dart';
import 'package:figma_to_flutter_2/App_Pages/Restaurant%20View_02.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class resturant_View_01 extends StatefulWidget {
  const resturant_View_01({super.key});

  @override
  State<resturant_View_01> createState() => _resturant_View_01State();
}

class _resturant_View_01State extends State<resturant_View_01> {
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
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 15,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only( left: 16.w),
                    child: AppText(text: 'Details', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Material(
                              color: Colors.transparent,
                              child: FilterCard(),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffECF0F4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                        child: Icon(Icons.menu, size: 15,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff98A8B8),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                height: 150.h,
                width: 327.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>resturant_View_02()));
                  },
                  child: AppText(text: 'Spicy restaurant', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff181C2E))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.h, left: 24.w),
              child: AppText(text: 'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 21.5.h, right: 88.w),
              child: Row(
                children: [
                  Icon(Icons.star_border_purple500_outlined, color: Color(0xffFF7622),),
                  SizedBox(width: 5.w,),
                  AppText(text: '4.7', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                  Spacer(),
                  Icon(Icons.fire_truck,color: Color(0xffFF7622)),
                  SizedBox(width: 5.w,),
                  AppText(text: 'Free', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                  Spacer(),
                  Icon(Icons.access_time, color: Color(0xffFF7622)),
                  SizedBox(width: 5.w,),
                  AppText(text: '20 Min', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff181C2E)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 31.5.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: CategoryChip(text: 'Burger', textColor: Colors.white, backgroundColor: Color(0xffF58D1D),),
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
              padding: EdgeInsets.only(top: 19.h, left: 24.w),
              child: AppText(text: 'Burger (10)', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 20.sp, color: Color(0xff181C2E)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 24.h),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>food_Details_02()));
                          },
                          child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40'))
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
              child: Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 19.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 19.h),
                        child: FoodCard2(title: 'Burger Bistro', subtitle: 'Rose garden', price: '\$40')
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
