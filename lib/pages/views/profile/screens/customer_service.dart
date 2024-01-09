import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:mich/models/chatmodel.dart';
import 'package:mich/models/user_model.dart';
import 'package:mich/pages/views/chat/camera_photo.dart';
import 'package:mich/pages/views/chat/video_call_screen.dart';
import 'package:mich/pages/views/chat/voice_call.dart';
import 'package:mich/pages/views/chat/widgets/sender_and_reciver.container.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/chattextfeild.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/show_menu_pop.dart';


class CustomerServiceChat extends StatefulWidget {
  const CustomerServiceChat({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomerServiceChat> createState() => _CustomerServiceChatState();
}

class _CustomerServiceChatState extends State<CustomerServiceChat> {
  var chatcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(64.h),
              child: AppBar(
                titleSpacing: 0,
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Icon(
                      IconlyLight.call,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                    onPressed: () {
                      Get.to(() => VoiceCallScreen());
                    },
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Icon(
                      IconlyLight.video,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                    onPressed: () {
                      Get.to(() => VideoCallScreen());
                    },
                  ),
                  SizedBox(width: 17.w),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Icon(
                      IconlyLight.more_circle,
                      size: 24.sp,
                      color: CustomColor.kgrey900,
                    ),
                    onPressed: () {
                        ShowMenuPop(context);
                    },
                  ),
                  SizedBox(width: 24.w),
                ],
                backgroundColor: CustomColor.kbackgroundwhite,
                title: "Customer Service".h4(
                    color: CustomColor.kgrey900,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                leading: GetBackIcon(),
              ),
            ),
            body: Column(children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(24.h),
                  itemCount: chatlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message messages = chatlist[index];
                    final bool isMe = messages.sender.id == currentuser.id;

                    return isMe
                        ? SenderTextWidget(text: messages.text)
                        : ReciverTextWidget(text: messages.text);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 24.h,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 12.h, 24.w, 36.h),
                child: Row(
                  children: [
                    SizedBox(
                      height: 56.h,
                      width: 312.w,
                      child: ChatTextFeild(
                        controller: chatcontroller,
                        onattachpresssed: () {},
                        onsmileypresssed: () {},
                        oncamerapresssed: () {
                          Get.to(() => CameraScreen());
                        },
                        hintText: 'Type a message ...',
                        onChanged: (String) {},
                        textInputType: TextInputType.multiline,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                        color: CustomColor.kprimaryblue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          IconlyBold.voice,
                          size: 24.sp,
                          color: CustomColor.kbackgroundwhite,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
