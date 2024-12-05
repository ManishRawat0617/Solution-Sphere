import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/view/auth/signUp/widget/email_Input_Field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/login_Input_Field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/submit_button.dart';
import 'package:solution_sphere/view/auth/signUp/widget/text_widget.dart';

class SigUpScreen extends StatefulWidget {
  const SigUpScreen({super.key});

  @override
  State<SigUpScreen> createState() => _SigUpScreenState();
}

class _SigUpScreenState extends State<SigUpScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center
        children: [
          
          // containing the login and email and button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    offset: Offset(-2.5, 3),
                    blurRadius: 3),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // login to the app
                    TopText(),
                    SizedBox(
                      height: 30,
                    ),
                    // input field for email
                    EmailInputField(),
                    SizedBox(
                      height: 30,
                    ),
                    // input field for password
                    PasswordInputField(),
                    SizedBox(
                      height: 30,
                    ),
                    SubmitButton()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
