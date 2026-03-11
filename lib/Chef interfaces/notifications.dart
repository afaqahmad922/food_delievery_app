import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: AppText(text: 'NOTIFICATIONS', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 30.sp, color: Colors.blueGrey),
      ),
    );
  }
}
