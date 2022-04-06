import 'package:base_getx/domain/model/category.dart';
import 'package:base_getx/infrastructure/dal/daos/home_dao.dart';

abstract class IHomeProvider {
  Future<List<CategoryModel>> getCategories();
}

class HomeProvider implements IHomeProvider {
  final HomeDAO homeDAO;

  HomeProvider({
    required this.homeDAO,
  });

  @override
  Future<List<CategoryModel>> getCategories() async {
    return homeDAO.getCategories();
  }
}
