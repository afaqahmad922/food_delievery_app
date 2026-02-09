import 'package:figma_to_flutter_2/On_Boarding/introPage_1.dart';
import 'package:figma_to_flutter_2/On_Boarding/introPage_2.dart';
import 'package:figma_to_flutter_2/On_Boarding/introPage_3.dart';
import 'package:figma_to_flutter_2/On_Boarding/introPage_4.dart';
import 'package:figma_to_flutter_2/On_Boarding/onBoarding_widgets.dart';
import 'package:figma_to_flutter_2/logins/singIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              introPage_1(),
              introPage_2(),
              introPage_3(),
              introPage_4(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 596.h),
            child: Column(
              children: [
                SmoothPageIndicator(controller: _controller, count: 4),
                Padding(
                  padding: EdgeInsets.only(top: 69.h, left: 24.w, right: 24.w),
                  child: onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>signIn()));
                          },
                          child: NextButtonContainer(),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 23.h, bottom: 22.h),
                              child: Center(
                                child: AppText(
                                  text: "Next",
                                  font: GoogleFonts.sen,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signIn()),
                        );
                      },
                      child: AppText(
                        text: "Skip",
                        font: GoogleFonts.sen,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
