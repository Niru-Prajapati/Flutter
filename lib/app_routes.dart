import 'package:youtube/home_page.dart';
import 'package:youtube/login_screen.dart';
import 'package:youtube/signup_screen.dart';

import 'identity_card.dart';

class AppRoute{

  AppRoute._();

  static const String identityCard='/indentityCard';
  static const String login='/login';
  static const String signup='/signup';

  static const String home='/home';

  static getAppRoutes() => {
    identityCard: (context)=>const IdentityCard(),
    login: (context) => const LoginScreen(),
    home: (context)=>const HomePage(),
    signup: (context) => const SignupScreen(),

  };
}