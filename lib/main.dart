import 'package:flutter/material.dart';
import 'package:sav_practical/widgets/banner.dart';
import 'package:sav_practical/widgets/insights.dart';
import 'package:sav_practical/widgets/navbar.dart';
import 'package:sav_practical/widgets/similar_items.dart';
import 'package:sav_practical/widgets/stock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sav_practical',
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                children: [
                  NavBar(
                      title: "Markets Open",
                      leadingIcon: Icons.arrow_back,
                      trailingIcon: Icons.bookmark_border,
                      onLeadingPressed: () {},
                      onTrailingPressed: () {}),
                  const Stock(),
                  const InsightsCard(),
                  const BannerCard(),
                  const SimilarItems(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
