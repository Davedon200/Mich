import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mich/pages/views/welcome_screens/walk_through_screen_1.dart';
import 'package:mich/utils/data/assets_paths.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    3.seconds.delay().then((value) => Get.off(() => WalkThrough()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 73.h,
          ),
          Image.asset(
            CustomAssets.welcomepng,
            height: 429.36.h,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 101.64.h,
          ),
          Center(
            child: "Welcome to \nMich! 👋".h1(
                color: CustomColor.kprimaryblue,
                fontWeight: CustomFontWeight.kBoldFontWeight),
          ),
          SizedBox(
            height: 32.h,
          ),
          "The best real estate application to complete\nyour life and family."
              .xl(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kMediumFontWeight,
                  textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
