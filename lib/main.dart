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
            child: Column(
              children: [
                NavBar(),
                Stock(),
                InsightsCard(),
                BannerCard(),
                SimilarItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
