import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class message_Screen extends StatefulWidget {
  const message_Screen({super.key});

  @override
  State<message_Screen> createState() => _message_ScreenState();
}

class _message_ScreenState extends State<message_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: const BoxDecoration(
                        color: Color(0xffE8E8E8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.close),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  const Text(
                    "Robert Fox",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                children: const [
                  Center(child: TimeText(time: "8:10 pm")),

                  SenderMessage(message: "Are you coming?"),

                  Center(child: TimeText(time: "8:11 pm")),

                  ReceiverMessage(message: "Hay, Congratulation for order"),

                  SenderMessage(message: "Hey Where are you now?"),

                  Center(child: TimeText(time: "8:12 pm")),

                  ReceiverMessage(message: "I’m Coming , just wait ..."),

                  SenderMessage(message: "Hurry Up, Man"),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(20.w),
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              height: 60.h,
              decoration: BoxDecoration(
                color: const Color(0xffE9EDF2),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                children: [
                  const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write somethings",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: const BoxDecoration(
                      color: Color(0xffFF7A1A),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.send, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





