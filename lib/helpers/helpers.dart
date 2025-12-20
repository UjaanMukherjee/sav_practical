import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientHelper {
  static ShaderMask greenTextGradient(Widget child) => ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.8, 0.9],
            colors: [
              Color(0xFF1F3822),
              Color(0xFF437A61),
              Color(0xFF5B9A74),
            ],
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcIn,
        child: child,
      );
}

class TextStyles {
  static TextStyle dmSansGrey({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.w500,
  }) =>
      GoogleFonts.dmSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: const Color(0xFF777676),
        letterSpacing: 0,
      );
  static TextStyle dmSansBlack({
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.w500,
  }) =>
      GoogleFonts.dmSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.black,
        letterSpacing: 0,
      );
}
