import 'package:base_getx/infrastructure/dal/daos/home_dao.dart';
import 'package:base_getx/presentation/home/providers/home_provider.dart';
import 'package:get/get.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeDAO());
    Get.put(HomeProvider(homeDAO: Get.find()));

    Get.lazyPut<HomeController>(
      () => HomeController(
        homeProvider: Get.find(),
      ),
    );
  }
}
