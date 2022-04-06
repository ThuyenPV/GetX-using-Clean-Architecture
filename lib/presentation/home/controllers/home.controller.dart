import 'package:base_getx/domain/model/category.dart';
import 'package:base_getx/presentation/home/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeProvider homeProvider;

  HomeController({required this.homeProvider});

  RxList<CategoryModel> categories = RxList([]);
  RxBool isCategoryLoading = RxBool(false);

  @override
  void onInit() {
    getAllCategories();
    super.onInit();
  }

  @override
  void onClose() {}

  void getAllCategories() {
    isCategoryLoading.value = true;
    try {
      categories.clear();
      homeProvider.getCategories().then((response) {
        categories.addAll(response);
      });
    } catch (e) {
      // Handle error message
    } finally {
      isCategoryLoading.value = false;
    }
  }
}
