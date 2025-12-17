import 'package:flutter/material.dart';
import 'package:sav_practical/widgets/line_chart.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.redAccent,
          height: 376,
        ),
        const LineChartWidget()
      ],
    );
  }
}
