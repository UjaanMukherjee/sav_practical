import 'package:flutter/material.dart';

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
