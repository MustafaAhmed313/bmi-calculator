import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_sizes.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:bmi_calculator/constants/gender_enum.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/widgets/app_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar(),
        body: const HomeScreen(),
      ),
    );  }
}