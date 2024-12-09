import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/app_icons.dart';
import 'package:solution_sphere/view/auth/login/widget/login_with_3rd_party/circular_icons.dart';

class SignWithThirdParty extends StatelessWidget {
  const SignWithThirdParty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularIcons(
          image: AppIcons.googleIcon,
        ),
        SizedBox(
          width: 30,
        ),
        CircularIcons(
          image: AppIcons.githubIcon,
        ),
        SizedBox(
          width: 30,
        ),
        CircularIcons(
          image: AppIcons.linkedinIcon,
        ),
      ],
    );
  }
}
