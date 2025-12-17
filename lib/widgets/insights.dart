import 'package:flutter/material.dart';
import 'package:sav_practical/widgets/bar_chart.dart';

class InsightsCard extends StatelessWidget {
  const InsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 256,
          color: Colors.blueAccent,
        ),
        BarChartWidget(),
      ],
    );
  }
}
