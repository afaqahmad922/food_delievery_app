import 'package:figma_to_flutter_2/App_Pages/Filter%20Card/filter_Card.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OngoingOrdersPage extends StatelessWidget {
  const OngoingOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 32.h),
            child: AppText(text: 'Food', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff181C2E)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
            child: Container(
                height: 2.h,
                width: double.infinity,
                color: Color(0xffEEF2F6)
            ),
          ),
          OrderCard(name: 'Pizza Hut', orderNo: '#162432', price: '\$35.25', items: '03 Items'),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h),
            child: AppText(text: 'Drinks', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff181C2E)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
            child: Container(
                height: 2.h,
                width: double.infinity,
                color: Color(0xffEEF2F6)
            ),
          ),
          OrderCard(name: 'McDonald', orderNo: '#242432', price: '\$40.15', items: '02 Items'),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h),
            child: AppText(text: 'Drinks', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff181C2E)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
            child: Container(
                height: 2.h,
                width: double.infinity,
                color: Color(0xffEEF2F6)
            ),
          ),
          OrderCard(name: 'Starbucks', orderNo: '#240112', price: '\$10.20', items: '01 Items'),
          SizedBox(height: 24.h,),
        ],
      ),
    );
  }
}