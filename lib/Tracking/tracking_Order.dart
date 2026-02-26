import 'package:figma_to_flutter_2/Tracking/drawer_Widget.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class tracking_Order extends StatefulWidget {
  const tracking_Order({super.key});

  @override
  State<tracking_Order> createState() => _tracking_OrderState();
}

class _tracking_OrderState extends State<tracking_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0D9E1),
      body: Stack(
        children: [
          Column(
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
                        color: Colors.black,
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
                    ),
                    Padding(
                      padding: EdgeInsets.only( left: 16.w),
                      child: AppText(text: 'Payment', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 79.h, left: 50.w),
                child: Image.asset('assets/track.png', scale: 1.2,),
              ),

            ],
          ),
          const BottomDrawer(),
        ],
      ),
    );
  }
}
