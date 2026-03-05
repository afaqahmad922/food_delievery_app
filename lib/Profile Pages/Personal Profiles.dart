import 'package:figma_to_flutter_2/Profile%20Pages/menu.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class personal_Profiles extends StatefulWidget {
  const personal_Profiles({super.key});

  @override
  State<personal_Profiles> createState() => _personal_ProfilesState();
}

class _personal_ProfilesState extends State<personal_Profiles> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
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
                    text: 'Profile Info',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Container(
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
                    child: Icon(Icons.more_horiz, size: 15),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14.w, top: 24.w),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF8822226).withOpacity(0.15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.w, top: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: 'Vishal Khadok', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff32343E)),
                    SizedBox(height: 8.h,),
                    AppText(text: 'I Love Fast Food', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F8FA),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFFFFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                              Icons.person_2_outlined,
                                color: Color(0xffFB6F3D),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(text: 'FULL NAME', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                                AppText(text: 'Vishal Khadok', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6B6E82)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFFFFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                                Icons.email_outlined,
                                color: Color(0xff413DFB),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(text: 'EMAIL', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                                AppText(text: 'hello@halallab.com', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6B6E82)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 22.h),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFFFFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                                Icons.phone,
                                color: Color(0xff369BFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(text: 'Phone Number', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                                AppText(text: '408-841-0926', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff6B6E82)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
