import 'package:flutter/material.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';

class ClickableWidgetHome extends StatelessWidget {
  final String icon;
  final String title;
  final double? height;
  final double? textSize;
  final Color? color;

  const ClickableWidgetHome(
      {super.key,
      required this.icon,
      required this.title,
      this.height,
      this.textSize,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 3)
          ],
          color: color ?? AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  icon,
                ),
                height: height ?? 70,
              ),
              const Spacer(),
              TextWidget(
                title: title,
                color: Colors.white,
                size: 14,
                boldness: FontWeight.w500,
              )
            ],
          ),
        ),
      ),
    );
  }
}
