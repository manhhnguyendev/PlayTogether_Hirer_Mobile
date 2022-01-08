import 'package:flutter/material.dart';
import 'package:playtogether_hirer/routes.dart';
import 'package:playtogether_hirer/screen/loginscreen/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: routes,
    );
  }
}
