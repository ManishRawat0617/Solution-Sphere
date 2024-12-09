import 'package:flutter/material.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                   const  Text(
                      "Welcome To\nSolution Sohere ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  const   Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RoutesName.profileScreen);
                      },
                      child:const  CircleAvatar(
                        radius: 35,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
