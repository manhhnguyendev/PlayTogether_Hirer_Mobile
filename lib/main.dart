import 'package:flutter/material.dart';
import 'package:playtogether_hirer/pages/history_page.dart';
import 'package:playtogether_hirer/pages/home_page.dart';
import 'package:playtogether_hirer/pages/login_page.dart';
import 'package:playtogether_hirer/helpers/routes.dart';
import 'package:playtogether_hirer/pages/notification_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NotificationsPage.routeName,
      routes: routes,
    );
  }
}
