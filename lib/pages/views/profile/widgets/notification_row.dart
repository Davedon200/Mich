import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mich/models/setting_notification.dart';
import 'package:mich/pages/views/profile/widgets/custom_switch.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';


class NotificationRow extends StatefulWidget {
  final Settingnotification set;
  const NotificationRow({
    Key? key,
    required this.set,
  }) : super(key: key);

  @override
  State<NotificationRow> createState() => _NotificationRowState();
}

class _NotificationRowState extends State<NotificationRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          widget.set.title.xl(
              color: CustomColor.kgrey900,
              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
          Spacer(),
          CustomSwitch(
              value: widget.set.isValue,
              ontoggle: (val) {
                setState(() {
                  widget.set.isValue = val;
                });
              }),
        ],
      ),
    );
  }
}