import 'package:flutter/material.dart';
import 'package:solution_sphere/data/network/network_service_api.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            NetworkServiceApi().getApi(
              "https://reqres.in/api/login",
            );
          },
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              child: const Text("login"),
            ),
          )),
    );
  }
}
