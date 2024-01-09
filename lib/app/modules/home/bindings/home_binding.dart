import 'package:get/get.dart';
import 'package:mich/app/modules/home/controllers/favorite_controller.dart';


import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<FavouriteController>(
      () => FavouriteController(),
    );
  }
}
