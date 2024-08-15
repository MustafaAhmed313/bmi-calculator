import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_sizes.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:bmi_calculator/constants/gender_enum.dart';
import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/app_bar.dart';
import 'package:bmi_calculator/widgets/gender_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender selectedGender = Gender.male;
  double selectedHeight = 150;
  int selectedWeight = 50;
  int selectedAge = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 10
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 4,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        genderBox(
                            icon: Icons.male,
                            text: "Male",
                            isSelected: selectedGender == Gender.male,
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            }
                        ),
                        genderBox(
                            icon: Icons.female,
                            text: "Female",
                            isSelected: selectedGender == Gender.female,
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            }
                        ),
                      ]
                  )
              ),
              const SizedBox(width: 10),
              Expanded(
                  flex: 3,
                  child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      width: 335,
                      height: 189,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Height', style: TextStyle(color: AppColors.gray, fontSize: AppFontSizes.num20, fontWeight: AppFontWeights.regular)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(selectedHeight.toStringAsFixed(0), style: const TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold)),
                                  const Padding(padding: EdgeInsets.only(bottom: 13, left: 1), child: Text('cm', style: TextStyle(color: AppColors.white, fontSize: AppFontSizes.num16, fontWeight: AppFontWeights.medium)))
                                ],
                              ),
                              Slider(
                                  label: 'Select Height',
                                  divisions: 10,
                                  activeColor: AppColors.red,
                                  min: 30,
                                  max: 220,
                                  value: selectedHeight,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedHeight = value;
                                    });
                                  }
                              )
                            ],
                          )
                        ],
                  )
                )
              ),
              const SizedBox(width: 10),
              Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                        width: 155,
                        height: 180,
                        child: Padding(padding: const EdgeInsets.only(top: 10, bottom: 10), child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Weight' , style: TextStyle(color: AppColors.gray, fontSize: AppFontSizes.num20, fontWeight: AppFontWeights.regular)),
                              Text('$selectedWeight', style: const TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    shape: const CircleBorder(),
                                    backgroundColor: AppColors.gray,
                                    onPressed: (){
                                      setState(() {
                                        if (selectedWeight > 2) {
                                          selectedWeight--;
                                        }
                                      });
                                    },
                                    child: const Icon(Icons.remove, size: 40, color: AppColors.white),
                                  ),
                                  FloatingActionButton(
                                      mini: true,
                                      shape: const CircleBorder(),
                                      backgroundColor: AppColors.gray,
                                      onPressed: (){
                                        setState(() {
                                          if (selectedWeight < 120) {
                                            selectedWeight++;
                                          }
                                        });
                                      },
                                      child: const Icon(Icons.add, size: 40, color: AppColors.white)
                                  )
                                ],
                              )
                            ]
                        ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                        width: 155,
                        height: 180,
                        child: Padding(padding: const EdgeInsets.only(top: 10, bottom: 10), child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Age' , style: TextStyle(color: AppColors.gray, fontSize: AppFontSizes.num20, fontWeight: AppFontWeights.regular)),
                              Text('$selectedAge', style: const TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    shape: const CircleBorder(),
                                    backgroundColor: AppColors.gray,
                                    onPressed: (){
                                      setState(() {
                                        if (selectedAge > 0) {
                                          selectedAge--;
                                        }
                                      });
                                    },
                                    child: const Icon(Icons.remove, size: 40, color: AppColors.white),
                                  ),
                                  FloatingActionButton(
                                      mini: true,
                                      shape: const CircleBorder(),
                                      backgroundColor: AppColors.gray,
                                      onPressed: (){
                                        setState(() {
                                          if (selectedAge < 120) {
                                            selectedAge++;
                                          }
                                        });
                                      },
                                      child: const Icon(Icons.add, size: 40, color: AppColors.white)
                                  )
                                ],
                              )
                            ]
                        ),
                        ),
                      )
                    ],
                  )
              ),
              const SizedBox(width: 10),
              Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      double bmi = selectedWeight / ((selectedHeight / 100) * 2);
                      String message, label;
                      if (bmi < 18.5) {
                        label = 'Underweight';
                        message = 'Consider reviewing your diet and consult a healthcare professional if needed.';
                      } else if (bmi >= 18.5 && bmi < 24.9) {
                        label = 'Normal';
                        message = 'Keep up the healthy lifestyle!';
                      } else if (bmi >= 25 && bmi < 29.9) {
                        label = 'Overweight';
                        message = 'Incorporating exercise and a balanced diet can help.';
                      } else {
                        label = 'Obese';
                        message = 'Consider seeking advice to improve your health.';
                      }

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultScreen(bmiData: BmiModel(label, message, bmi))
                      ));
                    },
                    child: Container(
                      width: double.infinity,
                      color: AppColors.red,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Calculate', style: TextStyle(color: AppColors.white, fontSize: AppFontSizes.num64, fontWeight: AppFontWeights.bold))
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}