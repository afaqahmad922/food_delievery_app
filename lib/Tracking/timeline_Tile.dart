import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class timeline_Tile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String text;

  const timeline_Tile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast? Color(0xffFF7622): Color(0xffA0A5BA)),
        indicatorStyle: IndicatorStyle(
          width: 20.w,
          color: isPast? Color(0xffFF7622) : Color(0xffA0A5BA),
          iconStyle: IconStyle(iconData: Icons.done, color: Colors.white ),
        ),
        endChild: stepperText(isPast: isPast, text: text,),
      ),
    );
  }
}
