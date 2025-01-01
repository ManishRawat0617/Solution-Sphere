import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Optional: Set your preferred background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/no-internet.png",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              title: "No Internet",
              boldness: FontWeight.w500,
              size: 27,
            ),
          ],
        ),
      ),
    );
  }
}
