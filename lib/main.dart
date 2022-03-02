import 'package:flutter/material.dart';
import 'package:playtogether_hirer/pages/login_page.dart';
import 'package:playtogether_hirer/helpers/routes.dart';
import 'package:playtogether_hirer/test/test.dart';
import 'package:playtogether_hirer/test/testLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TestLogin.routeName,
      routes: routes,
    );
  }
}
