import 'package:figma_to_flutter_2/Homes/Home%20V.1.dart';
import 'package:figma_to_flutter_2/logins/Forgot_Password.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:figma_to_flutter_2/logins/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
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
            Image.asset('assets/top_left.png', color: Colors.white),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Center(
                child: AppText(
                  text: 'Log In',
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
                  text: 'Please sign in to your existing account',
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
                          text: 'Email',
                          font: GoogleFonts.sen,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff32343E),
                        ),
                      ),
                      AppSearchField(hintText: 'example@gmail.com', color: Color(0xffF0F5FA),),
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
                        hintText: '* * * * * * * * * *',
                        suffixIcon: Icons.remove_red_eye_outlined, color: Color(0xffF0F5FA),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 24.h,
                          left: 24.w,
                          right: 24.w,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: AppText(
                                text: 'Remember me',
                                font: GoogleFonts.sen,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Color(0xff7E8A97),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPassword()));
                              },
                              child: AppText(
                                text: 'Forgot Password',
                                font: GoogleFonts.sen,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Color(0xffFF7622),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                          top: 29.h,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeV1()));
                          },
                            child: SignButton(text: 'LOG IN')),
                      ),
                      SizedBox(height: 38.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Don't have an Account?",
                            font: GoogleFonts.sen,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Color(0xff646982),
                          ),
                          SizedBox(width: 10.w),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
                            },
                            child: AppText(
                              text: "Sign Up",
                              font: GoogleFonts.sen,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: Color(0xffff7622),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 27.h),
                        child: Center(
                          child: AppText(
                            text: 'Or',
                            font: GoogleFonts.sen,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Color(0xff646982),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h, bottom: 39.h),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Image.asset('assets/fbook.png'),
                                  Spacer(),
                                  Image.asset('assets/twitter.png'),
                                  Spacer(),
                                  Image.asset('assets/apple.png'),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
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
