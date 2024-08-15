import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_sizes.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final BmiModel bmiData;

  const ResultScreen({super.key, required this.bmiData});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar(),
        backgroundColor: AppColors.primary,
        body: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 22) ,
                            child: Text('Your Result' ,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppFontWeights.bold,
                                  fontSize: AppFontSizes.num40
                              )
                            ),
                          )
                        ],
                      )
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 2 * 22,
                          decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(top: 57),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(widget.bmiData.label,
                                    style: const TextStyle(
                                        color: AppColors.green,
                                        fontSize: AppFontSizes.num20,
                                        fontWeight: AppFontWeights.bold
                                    ),
                                  ),
                                  const SizedBox(height: 57),
                                  Text(widget.bmiData.bmiNumber.toStringAsFixed(1),
                                      style: const TextStyle(
                                          color: AppColors.white,
                                          fontSize: AppFontSizes.num64,
                                          fontWeight: AppFontWeights.bold
                                      )
                                  ),
                                  const SizedBox(height: 57),
                                  Text(widget.bmiData.message,
                                    style: const TextStyle(
                                      color: AppColors.gray,
                                      fontSize: AppFontSizes.num16,
                                      fontWeight: AppFontWeights.medium,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                          )
                      )
                  ),
                  const SizedBox(height: 40),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeScreen()
                          ));
                        },
                        child: Container(
                          width: double.infinity,
                          color: AppColors.red,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Re - Calculate', style: TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold))],
                          ),
                        ),
                      )
                  )
                ],
              )
            )
        ),
    );
  }
}
