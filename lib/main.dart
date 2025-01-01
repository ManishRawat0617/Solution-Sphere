import 'package:flutter/material.dart';
import 'package:solution_sphere/config/routes/routes.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/test.dart';
import 'package:solution_sphere/view/Intro/Intro.dart';
import 'package:solution_sphere/view/home/home_screen.dart';
import 'package:solution_sphere/view/no_internet/on_internet_screen.dart';
import 'package:solution_sphere/view/search_professials/search_professials_screen.dart';
import 'package:solution_sphere/view/splash/splash_screen.dart';
import 'package:solution_sphere/view/subscribe_plan/subscribe_plan_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen()
        // initialRoute: RoutesName.splashScreen,
        // onGenerateRoute: Routes.generateRoute,
        );
  }
}
