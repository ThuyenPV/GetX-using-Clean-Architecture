import 'package:base_getx/domain/endpoints.dart';
import 'package:base_getx/domain/http/http.dart';
import 'package:base_getx/domain/http/http_response.dart';
import 'package:base_getx/domain/model/category.dart';

abstract class IHomeDAO {
  Future<List<CategoryModel>> getCategories();
}

class HomeDAO implements IHomeDAO {
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final HttpResponse response = await HttpHelper.get(Endpoints.category);
      final categories = response.body.map((e) {
        return CategoryModel.fromJson(e);
      }).toList();
      return categories;
    } catch (_) {
      return [];
    }
  }
}
