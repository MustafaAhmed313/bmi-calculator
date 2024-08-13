import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_sizes.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget genderBox({
  required IconData icon,
  required String text,
  required bool isSelected,
  required Function() onTap
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: isSelected? AppColors.red: AppColors.secondary,
          borderRadius: BorderRadius.circular(12.0)
      ),
      width: 155,
      height: 180,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 100, color: AppColors.white),
            Text(text , style: TextStyle(color: isSelected ? AppColors.white : AppColors.gray, fontSize: AppFontSizes.num20, fontWeight: AppFontWeights.regular))
          ]
      ),
    ),
  );
}