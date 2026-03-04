import 'package:figma_to_flutter_2/App_Pages/Filter%20Card/filter_Card.dart';
import 'package:figma_to_flutter_2/Orders/history%20Orders%20Page.dart';
import 'package:figma_to_flutter_2/Orders/ongoing%20Orders%20Page.dart';
import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffECF0F4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 15,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only( left: 16.w),
                    child: AppText(text: 'Details', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 17.sp, color: Colors.black),
                  ),
                  Spacer(),
                   Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffECF0F4),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 17.w, right: 18.w, bottom: 20.h),
                        child: Icon(Icons.menu, size: 15,),
                      ),
                    ),
              ]),
            ),

            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: TabBar(
                indicatorColor: Colors.red,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: "Ongoing"),
                  Tab(text: "History"),
                ],
              ),
            ),

            // 🔹 Sliding Pages
            Expanded(
              child: TabBarView(
                children: [
                  OngoingOrdersPage(),
                  HistoryOrdersPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




