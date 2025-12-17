import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text('Sav Practical'),
        ),
        body: Center(
          child: Text('Hello, Sav Practical!'),
        ),
      ),
    );
  }
}
