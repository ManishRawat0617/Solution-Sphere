import 'package:flutter/material.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';

class OffersBanner extends StatelessWidget {
  const OffersBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              title: "Unlimited Talk with AI Assistant",
              size: 18,
              color: Colors.white,
              boldness: FontWeight.bold,
            ),
            SizedBox(
              height: 5,
            ),
            TextWidget(
              title: "Unlimited Calls with the professionals",
              size: 18,
              color: Colors.white,
              boldness: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
