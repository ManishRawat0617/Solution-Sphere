import 'package:flutter/material.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/constants/app_icons.dart';
import 'package:solution_sphere/config/constants/app_images.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:solution_sphere/view/home/widget/clickable_banner_home.dart';
import 'package:solution_sphere/view/home/widget/clickable_widget_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // welcome container and profile
                Row(
                  children: [
                    const TextWidget(
                      title: "Welcome To\nSolution Sphere ",
                      boldness: FontWeight.bold,
                      size: 30,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RoutesName.profileScreen);
                      },
                      child: const CircleAvatar(
                        radius: 35,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                // AI barrier card
                const ClickableBannerHome(
                  text1: "AI at Your Fingertips",
                  text2: "Simplify, Solve, Succeed!",
                  buttonText: "Talk to AI",
                  imagePath: AppImages.aiRobotImage,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // connecting to people
                const ClickableBannerHome(
                  width: 150,
                  text1: "50,000+ ACTIVE USERS",
                  text2: "Connecting Minds, \nCreating Opportunities",
                  buttonText: "Connect to people",
                  imagePath: AppImages.connectingPeopleImage,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: TextWidget(
                      title: "More Feature",
                      boldness: FontWeight.bold,
                      size: 23),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                // more feature section
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // solution widget
                    ClickableWidgetHome(
                      title: "Solution",
                      color: AppColors.primaryColor1,
                      icon: AppIcons.searchProfessialIconImage,
                      height: 74,
                    ),
                    // subscribe widget
                    ClickableWidgetHome(
                      title: "Subscribe",
                      color: Colors.orange,
                      icon: AppIcons.crownIconImage,
                    ),
                    // blog widget
                    ClickableWidgetHome(
                      title: "Blog",
                      color: Color.fromARGB(253, 145, 71, 175),
                      icon: AppIcons.blogIconImage,
                      height: 70,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // bottom navigation bar
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
