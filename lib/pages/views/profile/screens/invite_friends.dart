import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mich/models/invite_model.dart';
import 'package:mich/pages/views/profile/widgets/invite_listtile.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: CustomAppBar(
                action: [],
                title: 'Invite Friends',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                // SizedBox(
                //   height: 7.h,
                // ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return InviteListTile(
                        invites: invitelist[index],
                      );
                    },
                    itemCount: invitelist.length,
                  ),
                )
              ],
            )));
  }
}

