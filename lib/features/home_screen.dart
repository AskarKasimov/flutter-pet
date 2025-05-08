import 'package:flutter/cupertino.dart';
import 'package:flutter_pet/res/themes.dart';
import 'package:flutter_pet/widgets/header.dart';
import 'package:flutter_pet/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context).currentTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Header(),
        SearchBar(
          textColor: theme.textFieldText,
          cursorColor: theme.textFieldText,
          backgroundColor: theme.textFieldBackground,
        ),
      ],
    );
  }
}
