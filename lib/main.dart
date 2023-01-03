import 'package:flutter/material.dart';

import 'calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyCalculator'),
        ),
        body: const SizedBox(
          width: double.infinity, // width of the sizedbox.
          child: Calculator(), // sizedbox taking class Calculator
        ),
      ),
    );
  }
}
