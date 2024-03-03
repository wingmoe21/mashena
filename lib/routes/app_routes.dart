import 'package:flutter/material.dart';
import 'package:seba_s_application1/presentation/new_activity/screens/new_activity_screen.dart';

import '../presentation/continue_with_e_mail_screen/continue_with_e_mail_screen.dart';
import '../presentation/home_page/home_page.dart';
import '../presentation/leaderboard_tab_container_screen/leaderboard_tab_container_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/splash_screan_screen/splash_screan_screen.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String splashScreanScreen = '/splash_screan_screen';

  static const String continueWithEMailScreen = '/continue_with_e_mail_screen';
  static const String leaderboardPage = '/leaderboard_page';

  static const String leaderboardTabContainerScreen =
      '/leaderboard_tab_container_screen';

  static const String newActivityScreen = '/newActivityScreen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homePage = '/home_page';

  static Map<String, WidgetBuilder> routes = {
    signInScreen: (context) => SignInScreen(),
    splashScreanScreen: (context) => SplashScreanScreen(),
    continueWithEMailScreen: (context) => ContinueWithEMailScreen(),
    newActivityScreen: (context) => NewActivityScreen(),
    leaderboardTabContainerScreen: (context) => LeaderboardTabContainerScreen(),
    homePage: (context) => MyHomePage(),
  };
}
