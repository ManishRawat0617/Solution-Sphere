import 'package:flutter/material.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({super.key});

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
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "abc",
              label: const Text(
                "Enter your name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 20),
                  borderRadius: BorderRadius.circular(20))),
        ),
      ),
    );
  }
}
