import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../constants/app_font_sizes.dart';
import '../constants/app_font_weights.dart';

Widget heightBox({
  required double selectedHeight
}) {
  return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12.0),
      ),
      width: 319,
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
                  Text('$selectedHeight', style: const TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold)),
                  const Padding(padding: EdgeInsets.only(bottom: 13, left: 1), child: Text('cm', style: TextStyle(color: AppColors.white, fontSize: AppFontSizes.num16, fontWeight: AppFontWeights.medium)))
                ],
              ),
              Slider(
                  secondaryActiveColor: AppColors.white,
                  activeColor: AppColors.red,
                  min: 30,
                  max: 220,
                  value: 150,
                  onChanged: (value) {}
              )
            ]
          )
        ]
      )
  );
}
