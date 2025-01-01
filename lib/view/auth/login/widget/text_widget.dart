import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/app_texts.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Text(
        AppTexts.appName,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
