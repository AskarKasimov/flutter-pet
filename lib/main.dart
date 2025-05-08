import 'package:flutter/widgets.dart';
import 'package:flutter_pet/features/home_screen.dart';
import 'package:flutter_pet/res/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).currentTheme;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Builder(
        builder: (context) {
          return Container(
            color: theme.backgroundColor,
            child: const SafeArea(child: HomeScreen()),
          );
        },
      ),
    );
  }
}
