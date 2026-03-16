import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class withdraw_Success extends StatefulWidget {
  const withdraw_Success({super.key});

  @override
  State<withdraw_Success> createState() => _withdraw_SuccessState();
}

class _withdraw_SuccessState extends State<withdraw_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 57.w, top: 219.h),
            child: Image.asset('assets/withdraw.png'),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: AppText(
                text: 'Withdraw Successful',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w500,
                fontSize: 22.sp,
                color: Color(0xff181C2E),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: SignButton(text: 'OK')),
          )
        ],
      ),
    );
  }
}
