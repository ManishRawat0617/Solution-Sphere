import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login To The App",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // Bottom shadow layer
                Container(
                  width: 200, // Adjust the width
                  height: 50, // Adjust the height
                  color: Colors.grey, // Shadow color
                ),
                // Top black bar
                Container(
                  width: 200, // Same width as the shadow layer
                  height: 40, // Slightly smaller height
                  color: Colors.black, // Bar color
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
