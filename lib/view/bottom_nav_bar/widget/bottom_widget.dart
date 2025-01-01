import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final String? title;
  final VoidCallback? ontap;
  const BottomWidget(
      {super.key, required this.icon, this.size, this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    const double size = 50;
    return InkWell(
        onTap: () {},
        child: Container(
          height: size,
          width: size,
          // decoration: BoxDecoration(color: Colors.red),
          child: Column(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              const Text(
                "Home",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
        ));
  }
}
