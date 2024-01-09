import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mich/pages/views/otp/otp_screen.dart';
import 'package:mich/utils/data/assets_paths.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';
import 'package:mich/widgets/sms_email_continud.dart';

class ForgetPasswordMethod extends StatefulWidget {
  ForgetPasswordMethod({super.key});

  @override
  State<ForgetPasswordMethod> createState() => _ForgetPasswordMethodState();
}

class _ForgetPasswordMethodState extends State<ForgetPasswordMethod> {

  bool select = true;
  bool unselect = false;

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Forget Password',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 36.h,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      CustomAssets.forgetpassmet,
                      height: 276.h,
                      width: 250.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: "Select which contact details should we use to \nreset your password"
                      .xl(
                          color: CustomColor.kgrey900,
                          fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: SMSAndEmalCont(
                    svg: CustomAssets.formes,
                    titletext: "via SMS:",
                    onPressed: () {
                      setState(() {
                        select = !select;
                        unselect = !unselect;
                      });
                    },
                    descripttext: '"+1 111 ******99"',
                    select: select,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: SMSAndEmalCont(
                    svg: CustomAssets.foremail,
                    titletext: 'via Email:',
                    onPressed: () {
                      setState(() {
                        select = !select;
                         unselect = !unselect;
                      });
                    },
                    descripttext: 'and***ley@yourdomain.com',
                    select: unselect,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: SizedBox(
                    height: 58.h,
                    width: 376.w,
                    child: ElevatedButton(
                      style:  ButtonStyle(
      elevation: MaterialStateProperty.all(1),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBigRadius)))),
                      onPressed: () {
                        Get.to(() => OTPCodeScreen());
                      },
                      child: "Continue".large(
                          color: CustomColor.kbackgroundwhite,
                          fontWeight: CustomFontWeight.kBoldFontWeight),
                    ),
                  ),
                ),
              ],
            )));
  }
}
