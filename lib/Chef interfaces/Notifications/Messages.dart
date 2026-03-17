import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class messages1 extends StatefulWidget {
  const messages1({super.key});

  @override
  State<messages1> createState() => _messages1State();
}

class _messages1State extends State<messages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 32.h, right: 24.w),
            child: ChatItem(name: 'Royal Parvej', message: 'Sounds awesome!', showBadge: true, badgeCount: '1', isOnline: true,)
          ),
          Padding(
            padding: EdgeInsets.only(top: 26.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: ChatItem(name: 'Cameron Williamson', message: 'Ok, Just hurry up little bit...😊', showBadge: true, badgeCount: '2', isOnline: true,)
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: ChatItem(name: 'Ralph Edwards', message: 'Thanks dude.', isOnline: true,)
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: ChatItem(name: 'Cody Fischer', message: 'How is going...?', isOnline: true,)
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
            child: Divider(color: const Color(0xffEBEBEB), thickness: 1.5.w),
          ),
          Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
              child: ChatItem(name: 'Eleanor Pena', message: 'Thanks for the awesome food man...!', isOnline: false,)
          ),
        ],
      ),
    );
  }
}
