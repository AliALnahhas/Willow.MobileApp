import 'package:flutter/material.dart';

class Navigate {
  static navigate(BuildContext context, screen) {
    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 1),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnimation, Widget child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.elasticInOut,
          );
          return ScaleTransition(
            scale: animation,
            alignment: Alignment.center,
            child: child,
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnimation) {
          return screen;
        },
      ),
    );
  }
}
