import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class my_Food extends StatefulWidget {
  const my_Food({super.key});

  @override
  State<my_Food> createState() => _my_FoodState();
}

class _my_FoodState extends State<my_Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: AppText(text: 'MY FOOD', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 30.sp, color: Colors.blueGrey),
      ),
    );
  }
}
