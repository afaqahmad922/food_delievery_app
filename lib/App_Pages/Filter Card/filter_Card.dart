import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class FilterCard extends StatelessWidget {
  const FilterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14),
      child: Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppText(text: 'Filter Your Search', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Color(0xff181C2E)),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                      child: GestureDetector(
                        onTap:  (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.cancel_outlined, size: 15,)),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: AppText(text: 'OFFERS', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.h),
                    child: Row(
                      children: [
                        CustomTag(text: 'Deleivery'),
                        Spacer(),
                        CustomTag(text: 'Pick Up'),
                        Spacer(),
                        CustomTag(text: 'Offer'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 9.h),
                    child: CustomTag(text: 'Online payment available'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: AppText(text: 'Deliver Time', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Row(
                    children: [
                      CategoryChip(text: '10-15 Min', textColor: Colors.white, backgroundColor: Color(0xffF58D1D),),
                      CategoryChip(text: '20 Min'),
                      CategoryChip(text: '30 Min'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: AppText(text: 'PRICING', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Row(
                  children: [
                    CircularTextButton(text: '\$'),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularTextButton(text: '\$\$', textColor: Colors.white, backgroundColor: Color(0xffF58D1D),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularTextButton(text: '\$\$\$'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: AppText(text: 'RATING', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 13.sp, color: Color(0xff32343E)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Row(
                  children: [
                    CircularStarIcon(starColor: Color(0xffF58D1D)),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularStarIcon(starColor: Color(0xffF58D1D)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularStarIcon(starColor: Color(0xffF58D1D)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularStarIcon(starColor: Color(0xffF58D1D)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: CircularStarIcon(starColor: Color(0xffD9D9D9)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 31.h, bottom: 20.h),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: Color(0xffFF7622)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 120.w, right: 120.w, top: 22.h, bottom: 21.h),
                      child: AppText(text: 'FILTER', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xffFFFFFF)),
                    ),
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