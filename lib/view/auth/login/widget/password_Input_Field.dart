import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_sphere/bloc/auth/login/login_bloc.dart';
import 'package:solution_sphere/bloc/auth/login/login_events.dart';
import 'package:solution_sphere/bloc/auth/login/login_states.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});

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
          buildWhen: (previous, current) =>
              current.password != previous.password,
          builder: (context, state) {
            return TextFormField(
              onChanged: (value) {
                context.read<LoginBloc>().add(PasswordChanged(password: value));
              },
              decoration: InputDecoration(
                  hintText: "ab231@#dj",
                  label: const Text(
                    "Enter your Password",
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
