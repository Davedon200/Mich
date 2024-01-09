import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mich/utils/data/assets_paths.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';
import 'package:mich/widgets/spin_indicator.dart';


class CongratulationDialog extends StatelessWidget {
  const CongratulationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kdialogradius),
      ),
      actions: [
        Container(
          height: 487.h,
          width: 340.w,
          decoration: BoxDecoration(
            color: CustomColor.kbackgroundwhite,
            borderRadius: BorderRadius.circular(kdialogradius),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Image.asset(
                CustomAssets.congratulationspng,
                height: 180.h,
                width: 185.93.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 32.h,
              ),
              "Congratulations!".h4(
                  color: CustomColor.kprimaryblue,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              SizedBox(
                height: 16.h,
              ),
              "Your account is ready to use. You will\nbe redirected to the Home page in a\nfew seconds.."
                  .large(
                color: CustomColor.kgrey900,
                fontWeight: CustomFontWeight.kRegularWeight,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32.h,
              ),
              SpinIndicator()
            ],
          ),
        )
      ],
    );
  }
}

Future<void> showLoadingDialog() async {
  await Get.dialog(CongratulationDialog(), barrierDismissible: true);
}

void dismissLoadingDialog() {
  Get.back();
}
