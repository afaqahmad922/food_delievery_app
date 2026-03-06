import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class address extends StatefulWidget {
  const address({super.key});

  @override
  State<address> createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                        left: 17.w,
                        right: 18.w,
                        bottom: 20.h,
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: AppText(
                    text: 'My Address',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F5FA),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 25.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFFFFFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(
                                  Icons.home_filled,
                                  color: Color(0xff2790C3),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: Row(
                                    children: [
                                      AppText(text: 'HOME', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                                      SizedBox(width: 130.w,),
                                      Icon(Icons.edit_note_rounded, color: Color(0xffFB6D3A),),
                                      Icon(Icons.delete_forever_outlined, color: Color(0xffFB6D3A),)
                                    ],
                                  ),
                                ),
                                AppText(text: '2464 Royal Ln. Mesa, New\nJersey 45463', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6B6E82)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F5FA),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 25.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFFFFFF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Icon(
                                  Icons.shopping_bag_sharp,
                                  color: Color(0xffA03BB1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: Row(
                                    children: [
                                      AppText(text: 'WORK', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                                      SizedBox(width: 130.w,),
                                      Icon(Icons.edit_note_rounded, color: Color(0xffFB6D3A),),
                                      Icon(Icons.delete_forever_outlined, color: Color(0xffFB6D3A),)
                                    ],
                                  ),
                                ),
                                AppText(text: '3891 Ranchview Dr. Richardson\nCalifornia 62639', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6B6E82)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
