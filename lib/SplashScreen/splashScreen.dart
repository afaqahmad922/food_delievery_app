import 'dart:async';
import 'package:figma_to_flutter_2/On_Boarding/onBoarding.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();

    // Start animation
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() => animate = true);
    });

    // Navigate after 2 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const onBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Stack(
        children: [

          /// Top-left image
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.easeOut,
            top: animate ? 00 : -100,
            left: animate ? 00 : -100,
            child: Image.asset(
              'assets/top_left.png',
              width: 170,
            ),
          ),

          /// Bottom-right image
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.easeOut,
            bottom: animate ? 00 : -100,
            right: animate ? 00 : -100,
            child: Image.asset(
              'assets/bottom_right.png',
              width: 170,
            ),
          ),

          /// Center logo
          Center(
            child: Image.asset(
              'assets/Logo.png',
              width: 140,
            ),
          ),
        ],
      ),
    );
  }
}
