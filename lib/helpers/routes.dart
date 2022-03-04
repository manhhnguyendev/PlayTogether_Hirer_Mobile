import 'package:flutter/widgets.dart';
import 'package:playtogether_hirer/models/detail_hiring_model.dart';
import 'package:playtogether_hirer/pages/change_password_page.dart';
import 'package:playtogether_hirer/pages/complete_profile_page.dart';
import 'package:playtogether_hirer/pages/forgot_password_page.dart';
import 'package:playtogether_hirer/pages/hiring_negotiating_page.dart';
import 'package:playtogether_hirer/pages/hiring_stage_page.dart';
import 'package:playtogether_hirer/pages/history_hiring_detail_page.dart';
import 'package:playtogether_hirer/pages/history_page.dart';
import 'package:playtogether_hirer/pages/home_page.dart';
import 'package:playtogether_hirer/pages/login_page.dart';
import 'package:playtogether_hirer/pages/notification_page.dart';
import 'package:playtogether_hirer/pages/player_profile_page.dart';
import 'package:playtogether_hirer/pages/rating_comment_player_page.dart';
import 'package:playtogether_hirer/pages/register_page.dart';
import 'package:playtogether_hirer/pages/search_page.dart';
import 'package:playtogether_hirer/pages/send_hiring_request_page.dart';
import 'package:playtogether_hirer/pages/take_user_categories_page.dart';
import 'package:playtogether_hirer/pages/user_account_page.dart';
import 'package:playtogether_hirer/pages/user_profile_details_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  RegisterPage.routeName: (context) => RegisterPage(),
  CompleteProfilePage.routeName: (context) => CompleteProfilePage(),
  ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
  ChangePasswordPage.routeName: (context) => ChangePasswordPage(),
  UserCategoriesPage.routeName: (context) => UserCategoriesPage(),
  PlayerProfilePage.routeName: (context) => PlayerProfilePage(),
  SendHiringRequestPage.routeName: (context) => SendHiringRequestPage(),
  HiringNegotiatingPage.routeName: (context) => HiringNegotiatingPage(),
  HiringPage.routeName: (context) => HiringPage(),
  RatingAndCommentPage.routeName: (context) => RatingAndCommentPage(),
  SearchPage.routeName: (context) => SearchPage(),
  HistoryHiringDetail.routeName: (context) => HistoryHiringDetail(
        detailHiringModel: demoDetailHiring,
      ),
  //HomePage.routeName: (context) => HomePage(),
  //HistoryPage.routeName: (context) => HistoryPage(),
  //NotificationsPage.routeName: (context) => NotificationsPage(),
  //UserAccountPage.routeName: (context) => UserAccountPage(),
  //UserProfilePage.routeName: (context) => UserProfilePage(),
};
