import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    backgroundColor: AppColors.primary,
    title: const Center(child: Text('BMI Calculator', style: TextStyle(color: AppColors.white, fontWeight: AppFontWeights.semiBold)))
  );
}