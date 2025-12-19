import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoInvestCard();
  }
}

class AutoInvestCard extends StatelessWidget {
  const AutoInvestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 64.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 320,
            height: 160,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: Color(0xFF6447A8).withAlpha(125),
                width: 1,
              ),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
                stops: [0.1, 0.4, 1],
                colors: [
                  Color(0xFF6447A8),
                  Color(0xFF7863BA),
                  Color(0xFFF6F4F9),
                ],
              ),
            ),
            child:
                // ───────── Text content ─────────
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Auto-Invest on\nyour schedule',
                  style: GoogleFonts.interTight(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 0,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Investing consistently helps\naverage out costs over time.',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),

          // ───────── Arrow button ─────────
          Positioned(
            right: 22,
            bottom: 32,
            child: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Color(0xFF7863BA),
              ),
            ),
          ),
          // ───────── Illustration placeholder ─────────
          const Positioned(
            right: 0,
            top: -55,
            child: SizedBox(
              width: 130,
              height: 130,
              child: Image(image: AssetImage('assets/images/sav_pen.png')),
            ),
          ),
        ],
      ),
    );
  }
}
