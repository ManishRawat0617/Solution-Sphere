import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/services/splash/splash_services.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SplashServices().isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextAnimator(
              "Solution Sphere",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              atRestEffect: WidgetRestingEffects.slide(),
            )
          ],
        ),
      ),
    );
  }
}
