import 'package:youtube/home_page.dart';
import 'package:youtube/login_screen.dart';

import 'identity_card.dart';

class AppRoute{

  AppRoute._();

  static const String identityCard='/indentityCard';
  static const String login='/login';
  static const String home='/home';

  static getAppRoutes() => {
    identityCard: (context)=>const IdentityCard(),
    login: (context) => const LoginScreen(),
    home: (context)=>const HomePage()
  };
}