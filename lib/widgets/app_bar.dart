import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    backgroundColor: AppColors.primary,
    elevation: 0,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        height: 1.0,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 1.0,
              color: Colors.black,
            )
          ]
        ),
      )
    ),
    title: const Center(
        child: Text('BMI Calculator',
            style: TextStyle(
                color: AppColors.white,
                fontWeight: AppFontWeights.semiBold,
            )
        )
    )
  );
}