import 'package:flutter/widgets.dart';
import 'package:playtogether_hirer/screen/complete_profile_screen/complete_profile_page.dart';
import 'package:playtogether_hirer/screen/login_screen/login_page.dart';
import 'package:playtogether_hirer/screen/register_screen/register_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  RegisterPage.routeName: (context) => RegisterPage(),
  CompleteProfilePage.routeName: (context) => CompleteProfilePage(),
};
