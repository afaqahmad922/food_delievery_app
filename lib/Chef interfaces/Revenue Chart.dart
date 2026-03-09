import 'package:figma_to_flutter_2/logins/Widgets/Widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RevenueCard extends StatelessWidget {
  const RevenueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.9.h),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: 'Total Revenue', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xff32343E)),
                  SizedBox(height: 5),
                  AppText(text: '\$2,241', font: GoogleFonts.sen, fontWeight: FontWeight.w700, fontSize: 22.sp, color: Color(0xff32343E)),
                ],
              ),
              SizedBox(width: 18.w,),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    AppText(text: 'Daily', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 12.sp, color: Color(0xff9C9BA6)),
                    SizedBox(width: 5.w,),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ),
              Spacer(),
              AppText(text: 'See Details', font: GoogleFonts.sen, fontWeight: FontWeight.w400, fontSize: 14.sp, color: Color(0xffFB6D3A)),
            ],
          ),

          const SizedBox(height: 30),

          /// Chart
          SizedBox(
            height: 180,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),

                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (touchedSpot) => Colors.black87,
                    getTooltipItems: (spots) {
                      return spots.map((spot) {
                        return LineTooltipItem(
                          '\$${spot.y}',
                          const TextStyle(color: Colors.white),
                        );
                      }).toList();
                    },
                  ),
                ),

                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1, // space between labels
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(color: Colors.grey, fontSize: 12);

                        switch (value.toInt()) {
                          case 0:
                            return const Text("10AM", style: style);
                          case 1:
                            return const Text("11AM", style: style);
                          case 2:
                            return const Text("12PM", style: style);
                          case 3:
                            return const Text("01PM", style: style);
                          case 4:
                            return const Text("02PM", style: style);
                          case 5:
                            return const Text("03PM", style: style);
                          default:
                            return const Text('');
                        }
                      },
                    ),
                  ),
                ),

                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 3),
                      FlSpot(1, 4),
                      FlSpot(2, 3.5),
                      FlSpot(3, 4.2),
                      FlSpot(4, 3.8),
                      FlSpot(5, 4.5),
                      FlSpot(6, 5),
                    ],
                    isCurved: true,
                    color: Color(0xffFF6B2C),
                    barWidth: 3,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFF6B2C).withOpacity(0.4),
                          Color(0xffFF6B2C).withOpacity(0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
