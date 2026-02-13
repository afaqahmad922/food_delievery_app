import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
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
            child: AppSearchField(hintText: '🔎 Search dishes, restaurants'),
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
                child: AppText(text: 'See All', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Color(0xff32343E)),
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
                    padding: EdgeInsets.only( left: 24.w),
                    child: CategoryButton(backgroundColor: Color(0xffFFD27C), text: 'All'),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 7.w),
                    child: CategoryButton(backgroundColor: Color(0xffFFFFFF), text: 'Hot Dog'),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 7.w),
                    child: CategoryButton(backgroundColor: Color(0xffFFFFFF), text: 'Burger'),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 7.w),
                    child: CategoryButton(backgroundColor: Color(0xffFFFFFF), text: 'Pizza'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
