import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mich/models/resident_model.dart';
import 'package:mich/pages/views/chat/widgets/custom_appbar.dart';
import 'package:mich/pages/views/profile/widgets/bookingContainer.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/utils/data/typography.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/show_menu_pop.dart';


class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(64 + 41.h),
            child: AppBar(
              leading: GetBackIcon(),
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(
                    IconlyLight.more_circle,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  onPressed: () {
                    ShowMenuPop(context);
                  },
                ),
              ],
              backgroundColor: CustomColor.kbackgroundwhite,
              title: "My Booking".h4(
                  color: CustomColor.kgrey900,
                  fontWeight: CustomFontWeight.kBoldFontWeight),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(41.h),
                child: CustomTabBar(text1: 'Active', text2: 'Completed',),
              ),
            )),
        body: TabBarView(
          children: [
          
            Column(
              children: [
                Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all( 24.h,),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return   BookingContainer(resident: featuredresidents[0],);
                  },
                )),
              ],
            ),
           Column(
             children: [
               Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all( 24.h,),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return   BookingContainer(resident: featuredresidents[0],);
                  },
                )),
             ],
           ),
          ],
        ),
      ),
    ));
  }
}



 