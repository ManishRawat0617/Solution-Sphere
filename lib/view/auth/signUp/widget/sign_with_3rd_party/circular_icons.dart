import 'package:flutter/material.dart';
class CircularIcons extends StatelessWidget {
  final String image;
  const CircularIcons({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.04,
      width: screenHeight * 0.04,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            offset: Offset(-2, 2),
            blurRadius: 3),
      ], color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Image.asset(
        image,
        height: screenHeight * 0.03,
      ),
    );
  }
}
