import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sav_practical/helpers/helpers.dart';

class NavBar extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onTrailingPressed;
  const NavBar({
    required this.title,
    this.leadingIcon,
    this.trailingIcon,
    this.onLeadingPressed,
    this.onTrailingPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: SizedBox(
        height: 72,
        child: Row(
          children: [
            if (leadingIcon != null)
              IconButton(
                icon: Icon(leadingIcon!),
                onPressed: onLeadingPressed,
              ),
            const Spacer(),
            MarketStatusHeader(title: title),
            const Spacer(),
            if (trailingIcon != null)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.grey.withAlpha(60),
                    width: 1,
                  ),
                ),
                //padding: const EdgeInsets.all(1),
                child: IconButton(
                  icon: Icon(trailingIcon!),
                  onPressed: onTrailingPressed,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MarketStatusHeader extends StatelessWidget {
  final String title;
  const MarketStatusHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // Title
          Positioned(
            top: 16,
            child: Text(
              title,
              style: TextStyles.dmSansGrey(fontWeight: FontWeight.w500),
            ),
          ),

          // Curve
          Positioned(
            bottom: 7,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 30,
              child: CustomPaint(
                painter: _CurvePainter(),
              ),
            ),
          ),

          Positioned(
            bottom: 15,
            left: 70,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF4E7F68),
                    Color(0xFF2C5F52),
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Transform.rotate(
                angle: 45 * 3.1415926535 / 180, // 45 degrees
                child: const Icon(
                  Icons.wb_sunny_outlined,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 21,
            left: 76,
            child: Container(
              width: 6.5,
              height: 6.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0x004E7F68),
          Color(0xFF4E7F68),
          Color(0x004E7F68),
        ],
        stops: [0.2, 0.5, 0.8],
      ).createShader(rect);

    final path = Path()
      ..moveTo(size.width * 0.15, size.height * 0.65)
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.25,
        size.width * 0.85,
        size.height * 0.65,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}
