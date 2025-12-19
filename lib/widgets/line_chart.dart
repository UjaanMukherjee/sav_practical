import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final spots = [
      const FlSpot(0, 2),
      const FlSpot(1, 3.4),
      const FlSpot(2, 2.8),
      const FlSpot(3, 4),
      const FlSpot(4, 3.1),
      const FlSpot(5, 3.4),
      const FlSpot(6, 3.0),
      const FlSpot(7, 4),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 130,
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 14,
              minY: 1.5,
              maxY: 4.5,
              gridData: FlGridData(
                drawHorizontalLine: true,
                drawVerticalLine: false, // cleaner
                horizontalInterval: 0.25,
                verticalInterval: 0.6,
                getDrawingHorizontalLine: (value) => const FlLine(
                  color: Color(0xFF2F5F4A),
                  strokeWidth: 0.8,
                  dashArray: [1, 10],
                ),
              ),
              titlesData: const FlTitlesData(show: false),
              borderData: FlBorderData(show: false),
              extraLinesData: ExtraLinesData(
                verticalLines: [
                  VerticalLine(
                    x: 7,
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF295139).withAlpha(0),
                        const Color(0xFF437A61).withAlpha(150),
                        const Color(0xFF5B9A74),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    strokeWidth: 2,
                    dashArray: [6, 6],
                  ),
                ],
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: spots,
                  isCurved: true,
                  barWidth: 2,
                  dotData: FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, bar, index) {
                      if (spot.x == 7) {
                        return FlDotCirclePainter(
                          radius: 5,
                          color: const Color(0xFF3C7F63),
                          strokeWidth: 6,
                          strokeColor: const Color(0xFF3C7F63).withAlpha(45),
                        );
                      }
                      return FlDotCirclePainter(radius: 0);
                    },
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF7BAE95),
                      Color(0xFF2F5F4A),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        const _TimeSelector(),
      ],
    );
  }
}

class _TimeSelector extends StatelessWidget {
  const _TimeSelector();

  @override
  Widget build(BuildContext context) {
    const items = ['1D', '1M', '1Y', '3Y', '5Y', 'All'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.map((e) {
        final selected = e == '1D';
        return SizedBox(
          height: 26,
          child: Column(
            children: [
              Container(
                width: 20,
                height: 2,
                color: selected ? Colors.black : Colors.transparent,
              ),
              Text(
                e,
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: selected
                      ? const Color(0xFF1F1F1F)
                      : const Color(0xFF777676),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
