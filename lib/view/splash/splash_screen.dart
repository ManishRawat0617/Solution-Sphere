import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/constants/app_images.dart';
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
            WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                  duration: const Duration(seconds: 2)),
              outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
              child: const Image(image: AssetImage(AppImages.appMainImage)),
            ),
            TextAnimator(
              "Solution Sphere",
              style: const TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.grey, offset: Offset(1, 1), blurRadius: 1)
                  ],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.buttonColor),
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                  duration: Duration(seconds: 1)),
              atRestEffect: WidgetRestingEffects.bounce(),
            ),
            TextAnimator(
              "Where Tech Minds Unite.",
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.buttonColor),
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(
                  delay: Duration(seconds: 40)),
            )
          ],
        ),
      ),
    );
  }
}
