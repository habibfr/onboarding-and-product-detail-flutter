import 'package:aksamedia_test_mobile/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akasamedia Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyOnboarding(),
    );
  }
}
