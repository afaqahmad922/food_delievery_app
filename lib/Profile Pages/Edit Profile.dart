import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class edit_Profile extends StatefulWidget {
  const edit_Profile({super.key});

  @override
  State<edit_Profile> createState() => _edit_ProfileState();
}

class _edit_ProfileState extends State<edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
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
                        child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: AppText(
                      text: 'Edit Profile',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 130.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF8822226).withOpacity(0.15),
                        ),
                      ),
        
                      Positioned(
                        bottom: -1,
                        right: -1,
                        child: Container(
                          height: 41.h,
                          width: 41.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.check,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 30.h, left: 24.w),
              child: AppText(text: 'FULL NAME', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            AppSearchField(hintText: 'Vishal Khadok', color: Color(0xffF0F5FA),),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'EMAIL', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            AppSearchField(hintText: 'hello@halallab.co', color: Color(0xffF0F5FA),),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'PHONE NO', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            AppSearchField(hintText: '408-841-0926', color: Color(0xffF0F5FA),),
            Padding(
              padding:  EdgeInsets.only(top: 24.h, left: 24.w),
              child: AppText(text: 'BIO', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
            ),
            SizedBox(
              height: 103.h,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, top: 8.h, right: 24.w),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "I Love Fast Food",
                    hintStyle: GoogleFonts.sen(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffA0A5BA),
                    ),
                    fillColor: Color(0xffF0F5FA),
                    filled: true,
                    contentPadding: EdgeInsets.only(left: 19.w, top: 16.h, bottom: 16.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 28.h, bottom: 30.h),
              child: SignButton(text: 'SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}
