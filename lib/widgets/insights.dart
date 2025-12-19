import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sav_practical/helpers/helpers.dart';
import 'package:sav_practical/widgets/bar_chart.dart';
import 'package:sav_practical/widgets/card_container.dart';

// class InsightsCard extends StatelessWidget {
//   const InsightsCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 256,
//           color: Colors.blueAccent,
//         ),
//         const BarChartWidget(),
//       ],
//     );
//   }
// }

class InsightsCard extends StatelessWidget {
  const InsightsCard({super.key});
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
    const green = Color(0xFF2F5F4A);

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ───────── Header ─────────
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52.0),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF295139),
                        Color(0xFF437A61),
                        Color(0xFF5B9A74),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const SizedBox(
                    height: 18,
                    width: 18,
                    child: Icon(
                      Icons.auto_awesome,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "Insights",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF295139),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.fullscreen, size: 22),
              ],
            ),
          ),

          const SizedBox(height: 12),
          CardContainer(
            child: Column(
              children: [
                // ───────── Top Metrics ─────────
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Annual Returns',
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF777676),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GradientHelper.greenTextGradient(
                              Text(
                                '9.20',
                                style: GoogleFonts.interTight(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            GradientHelper.greenTextGradient(
                              Text(
                                '%',
                                style: GoogleFonts.interTight(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Avg. Vol.",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF777676),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "62.06M",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                            color: const Color(0xFF1F1F1F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // ───────── Bar Chart ─────────
                SizedBox(
                  height: 70,
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
                                  green.withOpacity(0.9),
                                  green.withOpacity(0.0), // fade bottom
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // ───────── Bottom Stats ─────────
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _TextBlock(label: "Market Cap", value: "\$3.1T"),
                    _TextBlock(label: "P/E Ratio", value: "26.4"),
                    _TextBlock(label: "Div. Yield", value: "0.52%"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TextBlock extends StatelessWidget {
  final String label;
  final String value;

  const _TextBlock({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF777676),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: GoogleFonts.dmSans(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
