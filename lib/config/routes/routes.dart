import 'package:flutter/material.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/view/Intro/Intro.dart';
import 'package:solution_sphere/view/auth/login/login_screen.dart';
import 'package:solution_sphere/view/auth/signUp/signup_screen.dart';
import 'package:solution_sphere/view/home/home_screen.dart';
import 'package:solution_sphere/view/profile/profile_screen.dart';
import 'package:solution_sphere/view/settings/settings_screen.dart';
import 'package:solution_sphere/view/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.introScreen:
        return MaterialPageRoute(builder: (context) => const IntroScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context) => const SigUpScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.profileScreen:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case RoutesName.settingsScreen:
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("no such route"),
            ),
          );
        });
    }
  }
}
