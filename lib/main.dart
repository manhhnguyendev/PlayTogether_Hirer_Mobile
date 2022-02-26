import 'package:flutter/material.dart';
import 'package:playtogether_hirer/pages/login_page.dart';
import 'package:playtogether_hirer/helper/routes.dart';

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
