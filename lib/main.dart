import 'package:flutter/material.dart';
import 'package:flutter_pet/features/auth_screen.dart';
import 'package:flutter_pet/res/app_theme.dart';

void main() {
  runApp(MaterialApp(home: const MyApp(), theme: appTheme));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 18,
              left: 12,
              bottom: 32,
              right: 12,
            ),
            child: AuthScreen(),
          ),
        ),
      ),
    );
  }
}
