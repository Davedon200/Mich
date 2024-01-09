import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mich/pages/views/welcome_screens/welcome_screen.dart';
import 'package:mich/utils/data/assets_paths.dart';
import 'package:mich/widgets/spin_indicator.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    5.seconds.delay().then((value) => Get.off(() =>WelcomeScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 403.h,),
          Image.asset(CustomAssets.michlogopng,
          height: 330.h,
          width: 268.w, 
          fit: BoxFit.contain
          ),
          // SizedBox(height: 200.h,),
          SpinIndicator(),
          
        ]
      ),
    );
  }
}

