import 'package:flutter/widgets.dart';
import 'package:playtogether_hirer/screen/loginscreen/login_page.dart';
import 'package:playtogether_hirer/screen/signupscreen/signup_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  SignupPage.routeName: (context) => SignupPage(),
};
