import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Color.from(alpha: 1, red: 255, green: 255, blue: 0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color.from(alpha: 1, red: 255, green: 255, blue: 255),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
