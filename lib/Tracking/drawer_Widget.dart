import 'package:figma_to_flutter_2/Tracking/timeline_Tile.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double collapsedHeight = 170.h;
    double expandedHeight = 630.h;

    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        height: _isExpanded ? expandedHeight : collapsedHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.r,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 12.h),

            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                width: 60.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),

            SizedBox(height: 20.h),

            Expanded(
              child: SingleChildScrollView(
                physics: _isExpanded
                    ? const BouncingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 53.h,
                            width: 63.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: const Color(0xff98A8B8),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: 'Uttora Coffee House',
                                  font: GoogleFonts.sen,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp,
                                  color: const Color(0xff181C2E),

                                ),
                                AppText(
                                  text:
                                  'Ordered at 06 Sept, 10:00pm',
                                  font: GoogleFonts.sen,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: const Color(0xffA0A5BA),
                                ),
                                SizedBox(height: 16.h),
                                AppText(
                                  text: '2x Burger',
                                  font: GoogleFonts.sen,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: const Color(0xffA0A5BA),
                                ),
                                AppText(
                                  text: '4x Sandwich',
                                  font: GoogleFonts.sen,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: const Color(0xffA0A5BA),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 36.h),

                    /// ETA
                    Center(
                      child: AppText(
                        text: '20 min',
                        font: GoogleFonts.sen,
                        fontWeight: FontWeight.w800,
                        fontSize: 30.sp,
                        color: const Color(0xff181C2E),
                      ),
                    ),
                    Center(
                      child: AppText(
                        text: 'ESTIMATED DELIVERY TIME',
                        font: GoogleFonts.sen,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xffA0A5BA),
                      ),
                    ),

                    /// 🔥 Timeline
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: timeline_Tile(
                          isFirst: true,
                          isLast: false,
                          isPast: true,
                         text: 'Your order has been received',
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: timeline_Tile(
                          isFirst: false,
                          isLast: false,
                          isPast: true,
                        text: 'The restaurant is preparing your food',
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: timeline_Tile(
                          isFirst: false,
                          isLast: false,
                          isPast: false,
                        text: 'Your order has been picked up for delivery',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: timeline_Tile(
                          isFirst: false,
                          isLast: true,
                          isPast: false,
                        text: 'Order arriving soon!',
                      ),
                    ),

                    SizedBox(height: 20.h),
                    Container(
                      height: 116.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffEDEDED),
                          width: 2.w,
                        ),
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.r), topLeft: Radius.circular(10.r)
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 34.w, top: 30.h),
                                child: Container(
                                  height: 54.h,
                                  width: 54.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('assets/Profile.png', fit: BoxFit.cover,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 11.w, top: 32.h),
                                child: Padding(
                                  padding: EdgeInsets.only(right: 35.w),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          AppText(text: 'Robert F.', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 20.sp, color: Color(0xff181C2E)),
                                          AppText(text: 'Courier', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                                        ],
                                      ),
                                      SizedBox(width: 30.w,),
                                      Container(
                                        height: 45.h,
                                        width: 45.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFF7622),
                                        ),
                                        child: Center(child: Icon(Icons.phone, color: Colors.white,)),
                                      ),
                                      SizedBox(width: 11.w,),
                                      Container(
                                        height: 45.h,
                                        width: 45.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xffFF7622),
                                            width: 2.w,
                                          ),
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: Center(child: Icon(Icons.message, color: Colors.orange,)),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
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