import 'package:flutter/material.dart';

class FullscreenModal extends PageRouteBuilder {
  final Widget child;

  FullscreenModal({required this.child})
    : super(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) {
          return Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top * 1.5,
            ),
            child: Dismissible(
              direction: DismissDirection.down,
              onDismissed: (direction) => Navigator.pop(context),
              key: UniqueKey(),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                child: Scaffold(
                  backgroundColor:
                      Theme.of(context).dialogTheme.backgroundColor,
                  body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 7),
                        Center(
                          child: Container(
                            width: 80,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: BorderRadius.circular(2.5),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Flexible(child: child),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeOutQuart)),
            ),
            child: child,
          );
        },
      );
}
