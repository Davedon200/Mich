import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mich/models/setting_notification.dart';
import 'package:mich/pages/views/profile/widgets/notification_row.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';



class SettingNotificationScreen extends StatelessWidget {
  const SettingNotificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Notification',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationRow(
                        set: mynotification[index],
                      );
                    },
                    itemCount: mynotification.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 40.h,
                      );
                    },
                  ),
                )
              ],
            )));
  }
}


