import 'package:figma_to_flutter_2/On_Boarding/onBoarding_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: AppText(text: 'signIN', font: GoogleFonts.sen, fontWeight: FontWeight.w500, fontSize: 50.sp, color: Colors.white))
        ],
      ),
    );
  }
}
