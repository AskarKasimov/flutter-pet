import 'package:flutter/material.dart';
import 'package:flutter_pet/widgets/dark_button.dart';
import 'package:flutter_pet/widgets/fullscreen_modal.dart';
import 'package:flutter_pet/widgets/light_button.dart';
import 'package:flutter_pet/widgets/title_text.dart';

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
            TitleText(text: "NoteMaster"),
            SizedBox(height: 12),
            Text(
              'Sign up or log in to access your notes.',
              textAlign: TextAlign.center,
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
                    FullscreenModal(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TitleText(text: "Create Account"),
                          SizedBox(height: 10),
                          Text(
                            'Create your account to get started with notes',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 40),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.black54,
                              ),
                              hintText: "Your email address",
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black54,
                              ),
                              hintText: "Create a password",
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black54,
                              ),
                              hintText: "Repeat the password",
                            ),
                          ),
                        ],
                      ),
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
