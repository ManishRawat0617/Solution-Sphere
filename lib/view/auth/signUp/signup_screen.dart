import 'package:flutter/material.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/view/auth/signUp/widget/confirm_password_inout_field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/email_Input_Field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/name_input_field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/password_Input_Field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/phone_input_field.dart';
import 'package:solution_sphere/view/auth/signUp/widget/sign_with_3rd_party/sign_With_Third_party.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // containing the login and email and button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: size.height * 0.8,
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
                    // SIgn Up
                    const TopText(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    // input for name
                    const NameInputField(),
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
                      height: size.height * 0.03,
                    ),
                    // confirm password
                    const ConfirmPasswordInputField(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    // input for phone
                    const PhoneInputField(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    // submit the sign up form
                    const SubmitButton(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const SignWithThirdParty(),

                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, RoutesName.homeScreen, (routes) => false);
                      },
                      child: Text("Home Screen"),
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
