import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sav_practical/helpers/helpers.dart';
import 'package:sav_practical/widgets/bar_chart.dart';
import 'package:sav_practical/widgets/card_container.dart';

class InsightsCard extends StatelessWidget {
  const InsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    color: const Color(0xFF295139),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Annual Returns',
                          style: TextStyles.dmSansGrey(
                              fontWeight: FontWeight.w600),
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
                          style: TextStyles.dmSansGrey(),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "62.06M",
                          style: TextStyles.dmSansBlack(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const BarChartWidget(),
                const SizedBox(height: 8),
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
          style: TextStyles.dmSansGrey(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 2),
        Text(value, style: TextStyles.dmSansBlack(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
