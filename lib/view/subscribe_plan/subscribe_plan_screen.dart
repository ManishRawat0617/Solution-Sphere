import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solution_sphere/Utilis/widget/text_widget.dart';
import 'package:solution_sphere/config/constants/appColors.dart';
import 'package:solution_sphere/view/subscribe_plan/widgets/offer_banner.dart';

class SubscribePlanScreen extends StatefulWidget {
  const SubscribePlanScreen({super.key});

  @override
  State<SubscribePlanScreen> createState() => _SubscribePlanScreenState();
}

class _SubscribePlanScreenState extends State<SubscribePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscribe Plans"),
      ),
      body: Column(
        children: [OffersBanner(), Container()],
      ),
    );
  }
}
