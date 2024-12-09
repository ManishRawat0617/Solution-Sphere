import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? boldness;
  final Color? color;
  const TextWidget(
      {super.key, required this.title, this.size, this.boldness, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: boldness,
      ),
    );
  }
}
