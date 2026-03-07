import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class add_New_Address extends StatefulWidget {
  const add_New_Address({super.key});

  @override
  State<add_New_Address> createState() => _add_New_AddressState();
}

class _add_New_AddressState extends State<add_New_Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 295.h,
              width: double.infinity,
              color: Color(0xffD0D9E1),
              child: Stack(
                children: [
        
                  /// Back Button
                  Padding(
                    padding: EdgeInsets.only(top: 50.h, left: 24.w),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff32343E),
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
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
        
                  /// Tooltip + Triangle
                  Padding(
                    padding: EdgeInsets.only(top: 120.h, left: 140.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            color: Color(0xff32343E),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            "Move to edit location",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
        
                        CustomPaint(
                          size: Size(10.w, 10.h),
                          painter: TrianglePainter(),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
        
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.shade100,
                              ),
                            ),
        
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.shade400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'ADDRESS', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            AppSearchField(hintText: '3235 Royal Ln. mesa, new jersy 34567', color: Color(0xffF0F5FA), prefixIcon: Icons.gps_fixed_rounded,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only( left: 24.w,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only( top: 24.h),
                        child: AppText(text: 'STREET', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 8.h),
                        child: AppTextField(hintText: 'hason nagar',),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only( left: 24.w,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only( top: 24.h),
                        child: AppText(text: 'POST CODE', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 8.h),
                        child: AppTextField(hintText: '34567',),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'APARTMENT', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            AppSearchField(hintText: '345', color: Color(0xffF0F5FA),),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'LABEL AS', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 12.h),
              child: Row(
                children: [
                  CategoryChip(text: 'Home', backgroundColor: Color(0xffF58D1D), textColor: Colors.white,),
                  SizedBox(width: 10.w,),
                  CategoryChip(text: 'Work', backgroundColor: Color(0xffF0F5FA),),
                  SizedBox(width: 10.w,),
                  CategoryChip(text: 'Other', backgroundColor: Color(0xffF0F5FA),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 28.h, bottom: 30.h),
              child: SignButton(text: 'SAVE LOCATION'),
            ),
          ],
        ),
      ),
    );
  }
}



class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff3E414E)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width / 2, size.height);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}