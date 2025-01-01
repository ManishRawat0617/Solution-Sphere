import 'package:flutter/material.dart';
import 'package:solution_sphere/bloc/auth/login/login_bloc.dart';
import 'package:solution_sphere/bloc/auth/login/login_events.dart';
import 'package:solution_sphere/bloc/auth/login/login_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              offset: Offset(-1, 1),
              blurRadius: 3),
        ], borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: BlocBuilder<LoginBloc, LoginStates>(
          buildWhen: (previous, current) => current.email != previous.email,
          builder: (context, state) {
            return TextFormField(
              onChanged: (value) {
                context.read<LoginBloc>().add(EmailChanged(email: value));
              },
              decoration: InputDecoration(
                  hintText: "abc@example.com",
                  label: const Text(
                    "Enter your email",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 20),
                      borderRadius: BorderRadius.circular(20))),
            );
          },
        ),
      ),
    );
  }
}
