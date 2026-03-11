import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class add_New_Items extends StatefulWidget {
  const add_New_Items({super.key});

  @override
  State<add_New_Items> createState() => _add_New_ItemsState();
}

class _add_New_ItemsState extends State<add_New_Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: AppText(text: 'ADD ITEMS', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 30.sp, color: Colors.blueGrey),
      ),
    );
  }
}
