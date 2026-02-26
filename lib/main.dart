import 'package:figma_to_flutter_2/App_Pages/Food%20Details_02.dart';
import 'package:figma_to_flutter_2/App_Pages/Food_Details_01.dart';
import 'package:figma_to_flutter_2/App_Pages/Restaurant%20View_02.dart';
import 'package:figma_to_flutter_2/App_Pages/Restaurant_View_01.dart';
import 'package:figma_to_flutter_2/App_Pages/Search_Page.dart';
import 'package:figma_to_flutter_2/App_Pages/cart_Pages/edit_Cart.dart';
import 'package:figma_to_flutter_2/App_Pages/cart_Pages/my_Cart.dart';
import 'package:figma_to_flutter_2/App_Pages/food_Burgers.dart';
import 'package:figma_to_flutter_2/Homes/Home%20V.1.dart';
import 'package:figma_to_flutter_2/Homes/Home%20V.2.dart';
import 'package:figma_to_flutter_2/Homes/Home%20V.3.dart';
import 'package:figma_to_flutter_2/On_Boarding/onBoarding.dart';
import 'package:figma_to_flutter_2/Payment%20Screens/Add%20Card.dart';
import 'package:figma_to_flutter_2/Payment%20Screens/Payment%20Method.dart';
import 'package:figma_to_flutter_2/Payment%20Screens/Payment%20Successfull.dart';
import 'package:figma_to_flutter_2/Payment%20Screens/payment_Method_No_Mastercard.dart';
import 'package:figma_to_flutter_2/SplashScreen/splashScreen.dart';
import 'package:figma_to_flutter_2/Tracking/drawer_Widget.dart';
import 'package:figma_to_flutter_2/Tracking/tracking_Order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
