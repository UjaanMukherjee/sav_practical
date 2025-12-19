import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sav_practical/helpers/helpers.dart';
import 'package:sav_practical/widgets/card_container.dart';

class SimilarItems extends StatelessWidget {
  const SimilarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 36.0),
      child: SimilarToThisCard(),
    );
  }
}

class SimilarToThisCard extends StatelessWidget {
  const SimilarToThisCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ───────── Header ─────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 52.0),
          child: Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.view_list_sharp,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Similar To This',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F1F1F),
                ),
              ),
              const Spacer(),
              const Icon(Icons.fullscreen, size: 22),
            ],
          ),
        ),

        const SizedBox(height: 14),
        CardContainer(child: _MainCard()),
      ],
    );
  }
}

class _MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _StockRow(),
        _Divider(),
        _StockRow(),
        _Divider(),
        _StockRow(),
      ],
    );
  }
}

class _StockRow extends StatelessWidget {
  const _StockRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apple Inc.',
              style: TextStyles.dmSansBlack(),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Mkt. Cap ',
                  style: TextStyles.dmSansGrey(),
                ),
                Text(
                  '\$3.1T',
                  style: TextStyles.dmSansBlack(),
                )
              ],
            ),
          ],
        ),

        const Spacer(),

        // Right column
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$195.31',
              style: TextStyles.dmSansBlack(),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '+\$2.34 ',
                  style: TextStyles.dmSansGrey(),
                ),
                GradientHelper.greenTextGradient(
                  Text(
                    '0.17%',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
    //return Container(color: Colors.red, height: 38);
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 1,
        width: 320,
        decoration: BoxDecoration(
          //color: Colors.red,
          gradient: LinearGradient(
            colors: [
              Colors.black.withAlpha(2),
              Colors.black.withAlpha(70),
              Colors.black.withAlpha(2),
            ],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
