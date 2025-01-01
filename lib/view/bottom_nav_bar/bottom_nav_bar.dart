import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/view/bottom_nav_bar/widget/bottom_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppColors.primaryColor,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomWidget(
            icon: Icons.home,
          ),
          BottomWidget(
            icon: Icons.search,
          ),
          BottomWidget(
            icon: Icons.bar_chart,
          ),
          BottomWidget(
            icon: Icons.explore,
          ),
        ],
      ),
    );
  }
}
