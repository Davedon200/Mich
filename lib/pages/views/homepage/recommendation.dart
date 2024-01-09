import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mich/models/resident_model.dart';
import 'package:mich/utils/data/chip_list.dart';
import 'package:mich/utils/data/constants.dart';
import 'package:mich/widgets/background_wrapper.dart';
import 'package:mich/widgets/get_Back.dart';
import 'package:mich/widgets/mich_appBar.dart';
import 'package:mich/widgets/recommended_container.dart';
import 'package:mich/widgets/resident_chip.dart';



class OurRecommendation extends StatelessWidget {
  const OurRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundWrapper(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.h),
              child: CustomAppBar(
                action: [
                  Icon(
                    IconlyLight.search,
                    size: 24.sp,
                    color: CustomColor.kgrey900,
                  ),
                  SizedBox(
                    width: 26.87.w,
                  ),
                ],
                title: 'Our Recommendation',
                leading: GetBackIcon(),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 24.h),
                  child: FacilitiesChip(
                    chiplist: residentchip,
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 182.w / 274.h,
                          crossAxisSpacing: 16.h,
                          mainAxisSpacing: 16.h),
                      itemCount: recommendedresidents.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return RecommendedContainer(
                          resident: recommendedresidents[index],
                          onPressed: () {
                          },
                          onFavouritePressed: () {},
                          isFavoruited: false,
                        );
                      }),
                ),
              ],
            )));
  }
}
