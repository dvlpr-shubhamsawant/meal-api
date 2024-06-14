import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:mealapiapp/models/meal_category_response_model.dart';

class MealCategoryRequest {
  Future<MealCategoryResponseModel?> getMealCategory() async {
    String url = "https://www.themealdb.com/api/json/v1/1/categories.php";
    try {
      var res = await http.get(Uri.parse(url));

      if (res.statusCode == 200) {
        return MealCategoryResponseModel.fromJson(jsonDecode(res.body));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
