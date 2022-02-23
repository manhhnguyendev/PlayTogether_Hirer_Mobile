import 'package:flutter/widgets.dart';
import 'package:playtogether_hirer/screen/change_password_screen/change_password_page.dart';
import 'package:playtogether_hirer/screen/complete_profile_screen/complete_profile_page.dart';

import 'package:playtogether_hirer/screen/forgot_password_screen/forgot_password_page.dart';
import 'package:playtogether_hirer/screen/hiring_negotiating_sreen/hiring_negotiating_page.dart';
import 'package:playtogether_hirer/screen/hiring_stage_screen/hiring_stage_page.dart';
//import 'package:playtogether_hirer/screen/home_screen/home_screen.dart';
//import 'package:playtogether_hirer/screen/login_screen/login_google.dart';
import 'package:playtogether_hirer/screen/login_screen/login_page.dart';
import 'package:playtogether_hirer/screen/player_profile_screen/player_profile_page.dart';
import 'package:playtogether_hirer/screen/rating_comment_player_screen/rating_comment_player_page.dart';
import 'package:playtogether_hirer/screen/register_screen/register_page.dart';
import 'package:playtogether_hirer/screen/send_hiring_request_srceen/send_hiring_request_page.dart';
import 'package:playtogether_hirer/screen/take_user_needs_srceen/take_user_categories_page.dart';
import 'package:playtogether_hirer/screen/user_account_screen/user_account_page.dart';
import 'package:playtogether_hirer/screen/user_profile_details_srceen/user_profile_details_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  RegisterPage.routeName: (context) => RegisterPage(),
  CompleteProfilePage.routeName: (context) => CompleteProfilePage(),

  //LoginGoogle.routeName: (context) => LoginGoogle(),
  //HomePage.routeName: (context) => HomePage(),
  ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
  ChangePasswordPage.routeName: (context) => ChangePasswordPage(),
  UserCategoriesPage.routeName: (context) => UserCategoriesPage(),
  PlayerProfilePage.routeName: (context) => PlayerProfilePage(),
  SendHiringRequestPage.routeName: (context) => SendHiringRequestPage(),
  HiringNegotiatingPage.routeName: (context) => HiringNegotiatingPage(),
  HiringPage.routeName: (context) => HiringPage(),
  RatingAndCommentPage.routeName: (context) => RatingAndCommentPage(),
  UserAccountPage.routeName: (context) => UserAccountPage(),
  UserProfilePage.routeName: (context) => UserProfilePage(),
};
