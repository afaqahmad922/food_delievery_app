import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class notifications1 extends StatefulWidget {
  const notifications1({super.key});

  @override
  State<notifications1> createState() => _notifications1State();
}

class _notifications1State extends State<notifications1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 32.h, right: 24.w),
            child: NotificationItem(nameText: 'Tanbir Ahmed ', messageText: 'Placed a \nnew order')
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: NotificationItem(nameText: 'Salim Smith ', messageText: 'left a 5 star \nReview')
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: NotificationItem(nameText: 'Royal Bengol ', messageText: 'agreed to \ncancel')
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: NotificationItem(nameText: 'Pabel Vuiya ', messageText: 'Placed a \nnew order')
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
        ],
      ),
    );
  }
}
