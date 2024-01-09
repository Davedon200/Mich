import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mich/models/chatmodel.dart';
import 'package:mich/pages/views/chat/chat_page.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';


class ChatListTile extends StatelessWidget {
  final Message chat;
  const ChatListTile({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 10.w),
      child: InkWell(
        onTap: () {
          Get.to(() => ChatPage(message: chat,));
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(chat.sender.image),
          ),
          title: chat.sender.name.h6(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kBoldFontWeight),
          subtitle: chat.text.medium(
              color: CustomColor.kgrey700,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                chat.isread ? SizedBox(
                   height: 25.h,
                  width: 25.w,
                ): Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    color: CustomColor.kprimaryblue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: "3".xsmall(
                        color: CustomColor.kbackgroundwhite,
                        fontWeight: CustomFontWeight.kRegularWeight),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                chat.time.medium(
                    color: CustomColor.kgrey700,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
              ]),
        ),
      ),
    );
  }
}
