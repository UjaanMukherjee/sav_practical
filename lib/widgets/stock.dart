import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sav_practical/helpers/helpers.dart';
import 'package:sav_practical/widgets/line_chart.dart';
import 'package:fl_chart/fl_chart.dart';

class Stock extends StatelessWidget {
  const Stock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        StockCard(),
        _AppleLogo(),
      ],
    );
  }
}

class _AppleLogo extends StatelessWidget {
  const _AppleLogo();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade800,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.5, 0.9],
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(54),
              blurRadius: 12,
            ),
          ],
        ),
        child: const Icon(
          Icons.apple,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}

class StockCard extends StatelessWidget {
  const StockCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 25.0, bottom: 8.0),
      child: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF5B9A74).withAlpha(150),
                blurRadius: 15,
                spreadRadius: 2,
                offset: Offset.zero,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Apple Inc.',
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: const Color(0xFF1F1F1F),
                ),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 140,
                height: 44,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GradientHelper.greenTextGradient(
                      Text(
                        '\$',
                        style: GoogleFonts.manrope(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GradientHelper.greenTextGradient(
                      Text(
                        '195.31',
                        style: GoogleFonts.interTight(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              const _TodayValueWidget(),
              const SizedBox(height: 10),
              const LineChartWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TodayValueWidget extends StatelessWidget {
  const _TodayValueWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF295139).withAlpha(70),
            const Color(0xFF295139).withAlpha(15),
          ],
          stops: const [0.3, 0.7],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
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
                  Icons.keyboard_double_arrow_up,
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              '\$2.34 today',
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0,
                color: const Color(0xFF295139),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
