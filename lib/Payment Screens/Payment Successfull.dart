import 'package:figma_to_flutter_2/Tracking/tracking_Order.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class payment_Successful extends StatefulWidget {
  const payment_Successful({super.key});

  @override
  State<payment_Successful> createState() => _payment_SuccessfulState();
}

class _payment_SuccessfulState extends State<payment_Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only( top: 238.h, left: 77.w),
            child: Container(
              height: 207.h,
              width: 228.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.r),
                color: Color(0xff98A8B8),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only( top: 32.w, left: 77.w),
                child: AppText(text: 'Congratulations!', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 24.sp, color: Color(0xff111A2C)),
              ),
              Padding(
                padding: EdgeInsets.only( top: 16.w, left: 77.w),
                child: AppText(text: 'You can add a mastercard \nand save it for later',textAlign: TextAlign.center, font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 15.sp, color: Color(0xff2D2D2D)),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 28.h, bottom: 30.h),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tracking_Order()));
                },
                child: SignButton(text: 'Track Order')),
          ),
        ],
      ),
    );
  }
}
