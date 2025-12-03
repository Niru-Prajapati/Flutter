import 'package:youtube/modules/extra/home_page.dart';
import 'package:youtube/modules/auth/login_screen.dart';

import '../modules/auth/signup_screen.dart';
import '../modules/extra/identity_card.dart';
//import 'package:youtube/signup_screen.dart';

//import '../identity_card.dart';

class AppRoute{

  AppRoute._();

  static const String identityCard='/indentityCard';
  static const String login='/';
  static const String signup='/signup';

  static const String home='/home';

  static getAppRoutes() => {
    identityCard: (context)=>const IdentityCard(),
    login: (context) => const LoginScreen(),
    home: (context)=>const HomePage(),
    signup: (context) => const SignupScreen(),

  };
}