import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mich/models/card_model.dart';
import 'package:mich/pages/views/profile/widgets/continue_bottom_sheet.dart';
import 'package:mich/pages/views/profile/widgets/paymentcardwidget.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';



class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
      bottomSheet: ContinueBottomScheet(onContinue: () {}),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
        child: CustomAppBar(
          action: [
            IconButton(
              icon: Icon(
                IconlyLight.more_circle,
                color: CustomColor.kgrey900,
                size: 24.sp,
              ),
              onPressed: () {},
            )
          ],
          title: 'Payments',
          leading: GetBackIcon(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 24.h),
          Expanded(
              child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return PaymentCardWidget(card: cards[index],);
            }, 
            itemCount: cards.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 24.h,
              );
            },
          )),
        ],
      ),
    ));
  }
}

