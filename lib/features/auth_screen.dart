import 'package:flutter/material.dart';
import 'package:flutter_pet/widgets/dark_button.dart';
import 'package:flutter_pet/widgets/light_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox.shrink(),
        Column(
          children: [
            Image.asset('assets/images/logo.png', width: 200),
            Text(
              'NoteMaster',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Sign up or log in to access your notes.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: DarkButton(
                text: 'Sign up',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text('Full Screen Dialog Title'),
                            leading: IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          body: Center(
                            child: Text(
                              'This is a full screen dialog in Flutter.',
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: LightButton(text: 'Log in', onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
