import 'dart:ui' as BorderType;

import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/main_Navigation.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_border/dotted_border.dart';

class add_New_Items extends StatefulWidget {
  const add_New_Items({super.key});


  @override
  State<add_New_Items> createState() => _add_New_ItemsState();
}

class _add_New_ItemsState extends State<add_New_Items> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainNavigation()),
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
                        child: Icon(Icons.arrow_back_ios_new_outlined, size: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: AppText(
                      text: 'My Foods List',
                      font: GoogleFonts.sen,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  AppText(
                    text: 'Reset',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xffFB6D3A),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w,),
              child: AppText(
                text: 'ITEM NAME',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            AppSearchField2(hintText: 'Mazalichiken Halim', color: Color(0xffFDFDFD)),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w,),
              child: AppText(
                text: 'UPLOAD PHOTO/VIDEO',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 24.w,),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 111.w,
                      height: 101.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: const Color(0xff98A8B8),
                      ),
                    ),
                    SizedBox(width: 24.w,),
                    UploadDottedBox(),
                    SizedBox(width: 24.w,),
                    UploadDottedBox(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w,),
              child: AppText(
                text: 'PRICE',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 150.w,
                  height: 42.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 8.h, right: 24.w),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "\$50",
                        hintStyle: GoogleFonts.sen(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9C9BA6),
                        ),
                        fillColor: Color(0xffFDFDFD),
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 15.w, top: 13.h,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color(0xffE8EAED),
                            width: 1,
                          ),
                        ),
        
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color(0xffE8EAED),
                            width: 1,
                          ),
                        ),
        
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color(0xffE8EAED),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: Checkbox(
                    value: isChecked1,
                    activeColor: const Color(0xffFB6D3A), // checked background
                    checkColor: const Color(0xffFFFFFF), // check icon color
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Color(0xffFB6D3A); // checked
                      }
                      return const Color(0xffFDFDFD); // unchecked
                    }),
                    onChanged: (value) {
                      setState(() {
                        isChecked1 = value ?? false;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: AppText(
                    text: 'Pick Up',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Color(0xff9C9BA6),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Checkbox(
                      value: isChecked,
                      activeColor: const Color(0xffFB6D3A), // checked background
                      checkColor: const Color(0xffFFFFFF), // check icon color
                      fillColor: MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.selected)) {
                          return const Color(0xffFB6D3A); // checked
                        }
                        return const Color(0xffFDFDFD); // unchecked
                      }),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: AppText(
                    text: 'Delievery',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Color(0xff9C9BA6),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w,),
              child: AppText(
                text: 'INGREDIENTS',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w,),
                  child: AppText(
                    text: 'Basic',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff23243E),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w,),
                  child: AppText(
                    text: 'See All',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff23243E),
                  ),
                ),
                SizedBox(width: 5.w),
                Padding(
                  padding: EdgeInsets.only(top: 20.h,right: 24.w),
                  child: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 12.h, right: 24.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IngredientItem(containerColor: Color(0xffFFEBE4), imagePath: 'assets/salt.png', text: 'Salt'),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/chicken.png', text: 'Chicken'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFFEBE4), imagePath: 'assets/onion.png', text: 'Onion'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/garlic.png', text: 'Garlic'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFFEBE4), imagePath: 'assets/pepper.png', text: 'Peppers'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/ginger.png', text: 'Ginger'),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w,),
                  child: AppText(
                    text: 'Basic',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff23243E),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 24.w,),
                  child: AppText(
                    text: 'See All',
                    font: GoogleFonts.sen,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff23243E),
                  ),
                ),
                SizedBox(width: 5.w),
                Padding(
                  padding: EdgeInsets.only(top: 20.h,right: 24.w),
                  child: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 12.h, right: 24.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/avocado.png', text: 'Avocado'),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/apple1.png', text: 'Apple'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/berry.png', text: 'BlueBerry'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/brocolli.png', text: 'Brocolli'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/orange.png', text: 'Orange'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: IngredientItem(containerColor: Color(0xffFDFDFD), imagePath: 'assets/nut.png', text: 'Nut'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w,),
              child: AppText(
                text: 'DETAILS',
                font: GoogleFonts.sen,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xff23243E),
              ),
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
                    fillColor: Color(0xffFDFDFD),
                    filled: true,
                    contentPadding: EdgeInsets.only(left: 19.w, top: 16.h, bottom: 16.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: Color(0xffE8EAED),
                        width: 1,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: Color(0xffE8EAED),
                        width: 1,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        color: Color(0xffE8EAED),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 28.h, bottom: 30.h),
              child: SignButton(text: 'SAVE CHANGES'),
            ),
          ],
        ),
      ),
    );
  }
}


class UploadDottedBox extends StatelessWidget {
  const UploadDottedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        dashPattern: const [4, 4],
        strokeWidth: 2,
        color: const Color(0xffE8EAED),
        radius: Radius.circular(10.r),
      ),
      child: Container(
        height: 101.h,
        width: 111.w,
        alignment: Alignment.center,
        color: const Color(0xffFDFDFD),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 41.48.h,
                width: 41.48.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff523BB1).withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.cloud_upload_outlined,
                  color: Color(0xff523BB1),
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            AppText(
              text: 'Add',
              font: GoogleFonts.sen,
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: const Color(0xff9C9BA6),
            ),
          ],
        ),
      ),
    );
  }
}