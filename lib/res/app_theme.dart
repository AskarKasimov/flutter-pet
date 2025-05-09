import 'package:flutter/material.dart';
import 'package:flutter_pet/res/colors.dart';

final appTheme = ThemeData(
  primaryColor: AppColors.yellow,
  textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 22)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.yellow,
      foregroundColor: AppColors.darkYellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(vertical: 16),
      elevation: 0,
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    ),
  ),
);
