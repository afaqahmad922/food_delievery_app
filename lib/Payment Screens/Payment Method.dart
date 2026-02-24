import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class payment_Method extends StatefulWidget {
  const payment_Method({super.key});

  @override
  State<payment_Method> createState() => _payment_MethodState();
}

class _payment_MethodState extends State<payment_Method> {
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
              padding: EdgeInsets.only(left: 24.w, top: 54.h),
              child: Row(
                children: [
                  Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
                  ),
                  Padding(
                    padding: EdgeInsets.only( left: 16.w),
                    child: AppText(text: 'Payment', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 21.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 10.h),
                      child: PaymentOptionItem(imagePath: "assets/cash.png", text: 'cash'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 10.h),
                      child: PaymentOptionItem(imagePath: "assets/visa.png", text: 'visa'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 10.h),
                      child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 72.h,
                                width: 85.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.r),
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 2.w,
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/mastercard.png",
                                  ),
                                ),
                              ),

                              Positioned(
                                top: -8,
                                right: -8,
                                child: Container(
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
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AppText(
                            text: "Mastercard",
                            font: GoogleFonts.sen,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xff464E57),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 10.h),
                      child: PaymentOptionItem(imagePath: "assets/paypal.png", text: 'paypal'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 25.h),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffF4F5F7)
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 16.h),
                          child: AppText(text: 'Master Card', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff32343E)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 9.h, bottom: 20.h),
                          child: Row(
                            children: [
                              Image.asset('assets/mastercard.png'),
                              SizedBox(width: 5.w,),
                              AppText(text: '************436', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 16.sp, color: Color(0xff32343E)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: const Color(0xffF0F5FA),
                    width: 2.w,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 23.h, bottom: 23.h),
                  child: Center(child: AppText(text: '+ Add New', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 14.sp, color: Color(0xffFF7622))),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: 200.h,left: 24.w),
              child: Row(
                children: [
                  AppText(text: 'Total:', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffA0A5BA)),
                  Padding(
                    padding:EdgeInsets.only(left: 12.w),
                    child: AppText(text: '\$96', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 30.sp, color: Color(0xff181C2E)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 28.h, bottom: 30.h),
              child: SignButton(text: 'Place Order'),
            )
          ],
        ),
      ),
    );
  }
}
