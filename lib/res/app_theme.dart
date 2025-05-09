import 'package:flutter/material.dart';
import 'package:flutter_pet/res/colors.dart';

final lightTheme = ThemeData(
  primaryColor: AppColors.yellow,
  textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 18)),
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
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    hintStyle: TextStyle(color: Colors.grey[600]),
  ),
  // textSelectionTheme: TextSelectionThemeData(
  //   cursorColor: Colors.blue,
  //   selectionColor: Colors.blue.withOpacity(0.3),
  //   selectionHandleColor: Colors.blue,
  // ),
  dialogTheme: DialogThemeData(backgroundColor: AppColors.grey),
  scaffoldBackgroundColor: AppColors.white,
  dividerColor: AppColors.darkGrey,
);
