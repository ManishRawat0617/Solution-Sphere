import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final imageList = [
            AIBotContent(constraints: constraints),
            MainContent(constraints: constraints)
          ];

          return Stack(
            children: [
              // Centered content with carousel
              Align(
                alignment: Alignment.center,
                child: GFCarousel(
                  items: imageList,
                  onPageChanged: (index) {
                    setState(() {
                      // You can update UI state here if necessary
                    });
                  },
                  height: constraints.maxHeight * 0.6,
                  viewportFraction: 0.8,
                  autoPlay: true,
                ),
              ),
              // Positioned button at the bottom
              Positioned(
                bottom: constraints.maxHeight * 0.05,
                left: constraints.maxWidth * 0.1,
                right: constraints.maxWidth * 0.1,
                child: GestureDetector(
                  onTap: () {
                    // Handle "Get Started" button action
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutesName.loginScreen, (route) => false);
                  },
                  child: Container(
                    height: constraints.maxHeight * 0.08,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: TextWidget(
                        title: "Get Started",
                        color: Colors.white,
                        boldness: FontWeight.bold,
                        size: constraints.maxWidth * 0.05,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final BoxConstraints constraints;
  const MainContent({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: constraints.maxHeight * 0.5,
        width: constraints.maxWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(constraints.maxWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Image.asset(
                  "assets/vectors/connecting_people.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Flexible(
                flex: 1,
                child: TextWidget(
                  title: "Connect with Experts",
                  boldness: FontWeight.bold,
                  size: constraints.maxWidth * 0.07,
                  color: AppColors.buttonColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: TextWidget(
                    title:
                        "Join a thriving community of technology professionals",
                    boldness: FontWeight.bold,
                    size: constraints.maxWidth * 0.035,
                    color: AppColors.buttonColor,
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIBotContent extends StatelessWidget {
  final BoxConstraints constraints;
  const AIBotContent({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: constraints.maxHeight * 0.5,
        width: constraints.maxWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(constraints.maxWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Image.asset(
                  "assets/vectors/ai_robot.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Flexible(
                flex: 1,
                child: TextWidget(
                  title: "Leverage AI Assistance",
                  boldness: FontWeight.bold,
                  size: constraints.maxWidth * 0.07,
                  color: AppColors.buttonColor,
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: TextWidget(
                    title:
                        "Our intelligent AI bot is here to guide you, provide solutions, and simplify your journey",
                    boldness: FontWeight.bold,
                    size: constraints.maxWidth * 0.035,
                    color: AppColors.buttonColor,
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
