import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mich/models/notification_model.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';
import 'package:mich/widgets/notifications.dart';
import 'package:mich/widgets/show_menu_pop.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [
                  InkWell(
                    onTap: () {
                      ShowMenuPop(context);
                    },
                    child: Icon(
                      IconlyLight.more_circle,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                ],
                title: 'Notification',
                leading: GetBackIcon(),
              ),
            ),
            body: ListView.builder(
              padding: EdgeInsets.only(top: 9.h, right: 9.w),
              itemCount: notifications.length,
              itemBuilder: (BuildContext context, int index) {
                return NotificationWidget(notification: notifications[index]);
              },
            )));
  }
}
