import 'package:flutter/material.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/view/auth/login_screen.dart';
import 'package:solution_sphere/view/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

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
