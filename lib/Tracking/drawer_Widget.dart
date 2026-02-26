import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/cupertino.dart';
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
    double collapsedHeight = 200.h;
    double expandedHeight = 572.h;

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
          mainAxisSize: MainAxisSize.min,
          children: [

            SizedBox(height: 12.h),

            /// 🔥 Handle
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

            /// 🔹 Placeholder Container for your future code
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 29.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24.w,),
                          child: Container(
                            height: 53.h,
                            width: 63.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Color(0xff98A8B8)
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: AppText(text: 'Uttora Coffee House', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 18.sp, color: Color(0xff181C2E)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: AppText(text: 'Orderd at 06 Sept, 10:00pm', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                          ),
                          SizedBox(height: 16.h,),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: AppText(text: '2x Burger', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: AppText(text: '4x Sandwich', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}