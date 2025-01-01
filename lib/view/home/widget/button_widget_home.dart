import 'package:flutter/material.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? ontap;
  final String title;
  final Color? buttonColor;
  final Color? textColor;
  final double? width;
  final double? height;
  const ButtonWidget(
      {super.key,
      required this.title,
      this.buttonColor,
      this.textColor,
      this.width,
      this.height,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: width ?? 100,
          height: height ?? 35,
          decoration: BoxDecoration(
              color: buttonColor ?? AppColors.buttonColor,
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: TextWidget(
            title: title,
            size: 13,
            boldness: FontWeight.w600,
            color: textColor ?? Colors.white,
          )),
        ),
      ),
    );
  }
}
