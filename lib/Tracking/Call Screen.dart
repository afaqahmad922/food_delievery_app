import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class call_Screen extends StatefulWidget {
  const call_Screen({super.key});

  @override
  State<call_Screen> createState() => _call_ScreenState();
}

class _call_ScreenState extends State<call_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff273F55AB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 435.h),
              child: SingleChildScrollView(
                child: Container(
                  height: 377.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.r),
                      topLeft: Radius.circular(24.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 24.h),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff98A8B8),
                          ),
                          height: 105.h,
                          width: 105.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13.h),
                        child: AppText(text: 'Robert Fox', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff181C2E)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.h),
                        child: AppText(text: 'Connecting.......', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Color(0xff979797)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 52.w, right: 52.w, top: 28.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffECF0F4),
                                ),
                                height: 48.h,
                                width: 48.w,
                                child: Icon(Icons.mic_off),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                      
                                  Container(
                                    height: 115.h,
                                    width: 115.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade50,
                                    ),
                                  ),
                                      
                                  Container(
                                    height: 85.h,
                                    width: 85.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade100,
                                    ),
                                  ),
                                      
                                  Container(
                                    height: 55.h,
                                    width: 55.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade400,
                                    ),
                                    child: const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 40.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffECF0F4),
                                ),
                                height: 48.h,
                                width: 48.w,
                                child: Icon(Icons.mic_off),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
