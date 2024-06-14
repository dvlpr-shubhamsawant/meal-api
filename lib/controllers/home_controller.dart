import 'package:flutter/material.dart';
import 'package:mealapiapp/models/meal_category_response_model.dart';
import 'package:mealapiapp/requests/meal_category_request.dart';

class HomeController extends ChangeNotifier {
  bool isLoading = false;
  MealCategoryResponseModel? mealCategoryResponseModel;
  MealCategoryRequest request = MealCategoryRequest();

  set loading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  fetchMealCategories() async {
    loading = true;
    mealCategoryResponseModel = await request.getMealCategory();
    loading = false;
  }
}
