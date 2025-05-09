import 'package:flutter/material.dart';
import 'package:flutter_pet/res/colors.dart';

class DarkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const DarkButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.yellow,
        foregroundColor: AppColors.darkYellow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 16),
        elevation: 0,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      child: Text(text),
    );
  }
}
