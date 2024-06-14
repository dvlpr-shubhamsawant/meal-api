import 'package:flutter/material.dart';
import 'package:mealapiapp/models/meal_category_response_model.dart';

Widget categoryListtile(Categories category) {
  return ListTile(
    leading: Image.network(
      "${category.strCategoryThumb}",
    ),
    title: Text("${category.strCategory}"),
  );
}
