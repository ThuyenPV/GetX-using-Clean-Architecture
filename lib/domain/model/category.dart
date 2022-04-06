class CategoryModel {
  CategoryModel({
    this.categoryId,
    this.name,
  });

  final String? categoryId;
  final String? name;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        categoryId: json["category_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "name": name,
      };
}
