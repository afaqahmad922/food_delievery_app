import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class add_Card extends StatefulWidget {
  const add_Card({super.key});

  @override
  State<add_Card> createState() => _add_CardState();
}

class _add_CardState extends State<add_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
                    color: Color(0xffECF0F4),
                  ),
                  child: Icon(Icons.cancel_outlined, color: Colors.black,),
                ),
                Padding(
                  padding: EdgeInsets.only( left: 16.w),
                  child: AppText(text: 'Add Card', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 24.w, top: 24.h),
            child: AppText(text: 'CARD HOLDER NAME', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
          ),
          AppSearchField(hintText: 'Vishal Khadok', color: Color(0xffF0F5FA),),
          Padding(
            padding: EdgeInsets.only( left: 24.w, top: 24.h),
            child: AppText(text: 'CARD NUMBER', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
          ),
          AppSearchField(hintText: '2134 _ _ _ _ _ _ _ _', color: Color(0xffF0F5FA),),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only( left: 24.w,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only( top: 24.h),
                      child: AppText(text: 'EXPIRE DATE', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 8.h),
                      child: AppTextField(hintText: 'mm/yy',),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only( left: 24.w,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only( top: 24.h),
                      child: AppText(text: 'CVC', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                    ),
                    Padding(
                      padding: EdgeInsets.only( top: 8.h),
                      child: AppTextField(hintText: '***',),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 30.h),
            child: SignButton(text: 'ADD & MAKE PAYMENT',),
          )
        ],
      ),
    );
  }
}
