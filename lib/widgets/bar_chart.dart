import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});
  static const List<double> _values = [
    7,
    6,
    5,
    6,
    5.5,
    7,
    8,
    6.5,
    8,
    5,
    7,
    6,
    5,
    8,
    5,
    6.5,
    7.5,
    4,
    5,
    6,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          barTouchData: const BarTouchData(enabled: false),
          titlesData: const FlTitlesData(show: false),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: List.generate(
            _values.length,
            (i) => BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(
                  toY: _values[i],
                  width: 4,
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF2F5F4A).withAlpha(200),
                      Color(0xFF2F5F4A).withAlpha(0), // fade bottom
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
