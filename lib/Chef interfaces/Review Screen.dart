import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/Notifications/Messages.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/Notifications/Notifications1.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/main_Navigation.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class review_Screen extends StatefulWidget {
  const review_Screen({super.key});

  @override
  State<review_Screen> createState() => _review_ScreenState();
}

class _review_ScreenState extends State<review_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainNavigation(),
                        ),
                      );
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
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: AppText(
                      text: 'Reviews',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 31.h, left: 24.w),
              child: ReviewItem(
                reviewText: 'Great Food and Service',
                description: '''This Food so tasty & delicious. Breakfast so fast Delivered in my place. Chef is very friendly. I’m really like chef for Home Food Order. Thanks. ''',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: ReviewItem(
                reviewText: 'Awesome and Nice',
                description: '''This Food so tasty & delicious. Breakfast so fast Delivered in my place. ''',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: ReviewItem(
                reviewText: 'Awesome and Nice',
                description: '''This Food so tasty & delicious.''',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: ReviewItem(
                reviewText: 'Awesome and Nice',
                description: '''This Food so tasty & delicious. Breakfast so fast Delivered in my place. ''',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: ReviewItem(
                reviewText: 'Awesome and Nice',
                description: '''This Food so tasty & delicious.''',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
