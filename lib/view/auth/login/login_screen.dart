import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/view/auth/login/widget/app_image.dart';
import 'package:solution_sphere/view/auth/login/widget/email_Input_Field.dart';
import 'package:solution_sphere/view/auth/login/widget/login_with_3rd_party/login_With_Third_party.dart';
import 'package:solution_sphere/view/auth/login/widget/login_Input_Field.dart';
import 'package:solution_sphere/view/auth/login/widget/submit_button.dart';
import 'package:solution_sphere/view/auth/login/widget/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center
        children: [
          // Image
          AppImage(),
          // containing the login and email and button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    offset: Offset(-2.5, 3),
                    blurRadius: 3),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // login to the app
                    const TopText(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    // input field for email
                    const EmailInputField(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    // input field for password
                    const PasswordInputField(),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const SubmitButton(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),

                    const LoginWithThirdParty(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RoutesName.signupScreen);
                      },
                      child: Text("Sign Up"),
                    )
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
