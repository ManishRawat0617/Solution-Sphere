import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solution_sphere/config/constants/appColors.dart';

class SubmitButton extends StatelessWidget {
  final double? size;
  const SubmitButton({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to determine the screen size dynamically
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the size if not provided
    final double calculatedSizeWidth = size ?? screenWidth * 0.5;
    final double calculatedSizeHeight = size ?? screenHeight * 0.05;
    return Container(
      height: calculatedSizeHeight,
      width: calculatedSizeWidth,
      decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
          child: Text(
        "Login",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
