import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signInState();
}

class _signInState extends State<signUp> {
  bool isChecked = false;

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
              padding: EdgeInsets.only(top: 0.h),
              child: Center(
                child: AppText(
                  text: 'Sign UP',
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
                  text: 'Please sign up to get started',
                  font: GoogleFonts.sen,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Color(0xffffffff),
                ),
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
                          right: 308.w,
                        ),
                        child: AppText(
                          text: 'Name',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff32343E),
                        ),
                      ),
                      AppSearchField(hintText: 'John Doe', color: Color(0xffF0F5FA),),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h, left: 24.w),
                        child: AppText(
                          text: 'Email',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff32343E),
                        ),
                      ),
                      AppSearchField(
                        hintText: 'example@gmail.com', color: Color(0xffF0F5FA),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h, left: 24.w),
                        child: AppText(
                          text: 'Password',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff32343E),
                        ),
                      ),
                      AppSearchField(
                        hintText: '* * * * * * * * *',
                        suffixIcon: Icons.remove_red_eye_outlined, color: Color(0xffF0F5FA),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h, left: 24.w),
                        child: AppText(
                          text: 'Retype Password',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff32343E),
                        ),
                      ),
                      AppSearchField(
                        hintText: '* * * * * * * * *',
                        suffixIcon: Icons.remove_red_eye_outlined, color: Color(0xffF0F5FA),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                          top: 29.h,
                          bottom: 30.h,
                        ),
                        child: SignButton(text: 'LOG IN'),
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
