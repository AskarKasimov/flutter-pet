import 'package:flutter/material.dart';
import 'package:flutter_pet/res/colors.dart';

final lightTheme = ThemeData(
  primaryColor: AppColors.yellow,
  textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 16)),
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
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: AppColors.darkGrey, fontSize: 16),
    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
  ),
  dialogTheme: DialogThemeData(backgroundColor: AppColors.grey),
  scaffoldBackgroundColor: AppColors.white,
  dividerColor: AppColors.darkGrey,
);
