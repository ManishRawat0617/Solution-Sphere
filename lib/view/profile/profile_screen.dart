import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/config/routes/routes_name.dart';
import 'package:solution_sphere/Utilis/widget/card_Widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double spaceBtwCard = 15.0;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title:const Center(
            child: const TextWidget(
          title: "Profile",
          boldness: FontWeight.bold,
        )),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () =>
                    Navigator.of(context).pushNamed(RoutesName.settingsScreen),
                child: Icon(Icons.settings)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CardWidget(
                body: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GFAvatar(
                        radius: 50,
                        backgroundColor: AppColors.buttonColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Manish Rawat"),
                          Text("manishrawat@1331gmail.com"),
                          Text("Manish Rawat")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: spaceBtwCard),
              CardWidget(
                // contains the subscribe plan
                height: size.height * 0.08,
                body: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      const TextWidget(
                        title: "Subscribe to pro plan",
                        size: 15,
                        boldness: FontWeight.bold,
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: AppColors.buttonColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: TextWidget(
                            title: "Get Pro >",
                            size: 15,
                            boldness: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: spaceBtwCard,
              ),
              // Deatils text
              const Align(
                  alignment: Alignment.centerLeft,
                  child: TextWidget(
                    title: "Details",
                    size: 25,
                    boldness: FontWeight.bold,
                  )),
              const SizedBox(
                height: spaceBtwCard,
              ),
              CardWidget(body: Container()),
              const SizedBox(
                height: spaceBtwCard,
              ),
              CardWidget(body: Container()),
              const SizedBox(
                height: spaceBtwCard,
              ),
              CardWidget(
                  // switch mode
                  height: size.height * 0.08,
                  body: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.dark_mode,
                          color: AppColors.buttonColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const TextWidget(
                          title: "Switch Dark",
                          size: 18,
                          boldness: FontWeight.w600,
                        ),
                        const Spacer(),
                        GFToggle(
                          onChanged: (value) {},
                          value: true,
                          enabledTrackColor: AppColors.buttonColor,
                          duration: const Duration(milliseconds: 200),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: spaceBtwCard,
              ),
              ClickableCardWidget(
                size: size,
                icon: Icons.developer_board,
                title: "Share Your Feedback",
              ),
              const SizedBox(
                height: spaceBtwCard,
              ),
              ClickableCardWidget(
                size: size,
                icon: Icons.person_add,
                title: "Join our community",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickableCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const ClickableCardWidget({
    super.key,
    required this.size,
    required this.icon,
    required this.title,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        // Join our community
        height: size.height * 0.08,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.buttonColor,
              ),
              const SizedBox(
                width: 10,
              ),
              TextWidget(
                title: title,
                size: 18,
                boldness: FontWeight.w600,
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.buttonColor,
              )
            ],
          ),
        ));
  }
}
