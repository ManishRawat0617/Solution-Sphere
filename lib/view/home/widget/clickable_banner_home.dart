import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/constants/app_images.dart';
import 'package:solution_sphere/view/home/widget/button_widget_home.dart';

class ClickableBannerHome extends StatelessWidget {
  final String? text1;
  final Color? text1Color;
  final String? text2;
  final Color? text2Color;
  final double? height;
  final double? width;
  final Widget? widget;
  final Color? color;
  final String? buttonText;
  final String? imagePath;

  const ClickableBannerHome(
      {super.key,
      this.height,
      this.width,
      this.widget,
      this.color,
      this.buttonText,
      this.imagePath,
      this.text1,
      this.text2,
      this.text1Color,
      this.text2Color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 140,
      width: size.width,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 5)
          ],
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // text1
                TextWidget(
                  title: text1 ?? "here your add text1",
                  color: text1Color ?? Colors.white,
                  boldness: FontWeight.w500,
                ),
                // text2
                TextWidget(
                  title: text2 ?? "here your add text2",
                  color: text2Color ?? Colors.white,
                  boldness: FontWeight.w500,
                ),
                const Spacer(),
                // button
                ButtonWidget(
                  title: buttonText ?? "add title",
                  width: width,
                ),
              ],
            ),
            const Spacer(),
            // image
            Image(image: AssetImage(imagePath ?? AppImages.aiRobotImage))
          ],
        ),
      ),
    );
  }
}
