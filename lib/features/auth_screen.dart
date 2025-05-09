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
                    PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top * 1.5,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              child: Scaffold(
                                backgroundColor:
                                    Theme.of(
                                      context,
                                    ).dialogTheme.backgroundColor,
                                body: GestureDetector(
                                  onVerticalDragUpdate: (details) {
                                    if (details.primaryDelta! > 3) {
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: Column(
                                    children: [
                                      SizedBox(height: 7),
                                      Center(
                                        child: Container(
                                          width: 80,
                                          height: 4,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).dividerColor,
                                            borderRadius: BorderRadius.circular(
                                              2.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      transitionsBuilder: (
                        context,
                        animation,
                        secondaryAnimation,
                        child,
                      ) {
                        return SlideTransition(
                          position: animation.drive(
                            Tween(
                              begin: Offset(0.0, 1.0),
                              end: Offset.zero,
                            ).chain(CurveTween(curve: Curves.easeOutQuart)),
                          ),
                          child: child,
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
