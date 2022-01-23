import 'package:flutter/material.dart';

// chuyen huong man hinh
void pushInto(BuildContext context, Widget wg, bool isRightToLeft) {
  Navigator.of(context).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            MaterialApp(home: wg),
        transitionDuration: Duration(milliseconds: 0),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          var begin = (isRightToLeft == true) ? Offset(50, 0) : Offset(-50, 0);
          var end = Offset.zero;
          var curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
          // return FadeTransition(
          //   opacity: animation,
          //   child: child,
          // ); runApp(MaterialApp(home: Register(currentIndex: 0)));
        },
      ),
      (route) => false);
}
