import 'package:flutter/material.dart';
import 'package:playtogether_hirer/routes.dart';
import 'package:playtogether_hirer/screen/login_screen/login_page.dart';
import 'package:playtogether_hirer/screen/player_profile_screen/player_profile_page.dart';
import 'package:playtogether_hirer/screen/take_user_needs_srceen/take_user_categories_page.dart';
import 'package:playtogether_hirer/screen/user_account_screen/user_account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: UserAccountPage.routeName,
      routes: routes,
    );
  }
}
