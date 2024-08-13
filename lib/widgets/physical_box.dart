import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_font_sizes.dart';
import 'package:bmi_calculator/constants/app_font_weights.dart';
import 'package:flutter/material.dart';

Widget physicalBox({
  required String text,
}) {
  return Container(
      decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(12.0)
      ),
      width: 155,
      height: 180,
      child: Padding(padding: const EdgeInsets.only(top: 10, bottom: 10), child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text , style: const TextStyle(color: AppColors.gray, fontSize: AppFontSizes.num20, fontWeight: AppFontWeights.regular)),
            Text('', style: const TextStyle(color: AppColors.white, fontSize: AppFontSizes.num50, fontWeight: AppFontWeights.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  mini: true,
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.gray,
                  onPressed: (){

                  },
                  child: const Icon(Icons.remove, size: 40, color: AppColors.white),
                ),
                FloatingActionButton(
                  mini: true,
                    shape: const CircleBorder(),
                    backgroundColor: AppColors.gray,
                    onPressed: (){

                    },
                    child: const Icon(Icons.add, size: 40, color: AppColors.white)
                )
              ],
            )
          ]
        ),
      ),
  );
}