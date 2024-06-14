
class MealCategoryResponseModel {
  List<Categories>? categories;

  MealCategoryResponseModel({this.categories});

  MealCategoryResponseModel.fromJson(Map<String, dynamic> json) {
    if(json["categories"] is List) {
      categories = json["categories"] == null ? null : (json["categories"] as List).map((e) => Categories.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(categories != null) {
      _data["categories"] = categories?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Categories {
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  Categories({this.idCategory, this.strCategory, this.strCategoryThumb, this.strCategoryDescription});

  Categories.fromJson(Map<String, dynamic> json) {
    if(json["idCategory"] is String) {
      idCategory = json["idCategory"];
    }
    if(json["strCategory"] is String) {
      strCategory = json["strCategory"];
    }
    if(json["strCategoryThumb"] is String) {
      strCategoryThumb = json["strCategoryThumb"];
    }
    if(json["strCategoryDescription"] is String) {
      strCategoryDescription = json["strCategoryDescription"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["idCategory"] = idCategory;
    _data["strCategory"] = strCategory;
    _data["strCategoryThumb"] = strCategoryThumb;
    _data["strCategoryDescription"] = strCategoryDescription;
    return _data;
  }
}