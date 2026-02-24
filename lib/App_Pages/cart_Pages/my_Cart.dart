import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class my_Cart extends StatefulWidget {
  const my_Cart({super.key});

  @override
  State<my_Cart> createState() => _my_CartState();
}

class _my_CartState extends State<my_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121223),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 54.h),
            child: Row(
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFf),
                  ),
                  child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
                ),
                Padding(
                  padding: EdgeInsets.only( left: 16.w),
                  child: AppText(text: 'Cart', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.white),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only( right: 24.w),
                  child: AppText(text: 'DONE', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff059C6A),),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h),
            child: FoodItemCard2(title: 'Pizza Calzone', subtitle: 'European', price: '\$64', size: "14'’", quantity: '2'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 32.h),
            child: FoodItemCard2(title: 'Pizza Calzone', subtitle: 'European', price: '\$64', size: "14'’", quantity: '2'),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 330.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0.r),
            topRight: Radius.circular(24.0.r),
          ),
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: EdgeInsets.only( top: 24.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w),
                  child: Row(
                    children: [
                      AppText(text: 'DELIVERY ADDRESS', font:GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                      Spacer(),
                      AppText(text: 'EDIT', font:GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffFF7622)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: AppSearchField(hintText: 'example@gmail.com', color: Color(0xffF0F5FA),),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 30.h,left: 24.w),
                  child: Row(
                    children: [
                      AppText(text: 'Total:', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                      Padding(
                        padding:EdgeInsets.only(left: 12.w),
                        child: AppText(text: '\$96', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 30.sp, color: Color(0xff181C2E)),
                      ),
                      Spacer(),
                      AppText(text: 'Breakdown', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffFF7622)),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 30.h, bottom: 32.h),
                  child: SignButton(text: 'Place Order'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
