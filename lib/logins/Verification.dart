import 'package:figma_to_flutter_2/logins/Location_Access.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff121223),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/top_left.png', color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Center(
                child: AppText(
                  text: 'Verification',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w700,
                  fontSize: 30.sp,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: AppText(
                  text: 'We have sent a code to your email',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Center(
              child: AppText(
                text: 'example@gmail.com',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: Color(0xffffffff),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.r),
                      topLeft: Radius.circular(24.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 24.h,
                          left: 24.w,
                          right: 24.w,
                        ),
                        child: Row(
                          children: [
                            AppText(
                              text: 'Email',
                              font: GoogleFonts.sen,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Color(0xff32343E),
                            ),
                            Spacer(),
                            AppText(
                              text: 'Resend in.50sec',
                              font: GoogleFonts.sen,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Color(0xff32343E),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, top: 8.5.h, right: 24.w),
                        child: OtpFields(),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                          top: 30.h,
                          bottom: 377.h,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>location_access()));
                          },
                            child: SignButton(text: 'Verify')),
                      ),
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
