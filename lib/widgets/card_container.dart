import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 15,
            left: -10,
            child: Transform.rotate(
              angle: -0.15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1F1F1F).withAlpha(60),
                      const Color(0xFF1F1F1F).withAlpha(2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 160,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: -10,
            child: Transform.rotate(
              angle: 0.15,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFF1F1F1F).withAlpha(60),
                      const Color(0xFF1F1F1F).withAlpha(2),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 160,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 320,
            height: 218,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF1F1F1F).withAlpha(100),
                  const Color(0xFF1F1F1F).withAlpha(32),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
