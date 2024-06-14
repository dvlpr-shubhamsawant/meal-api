import 'package:flutter/material.dart';
import 'package:mealapiapp/controllers/home_controller.dart';
import 'package:mealapiapp/shared_widget/category_data_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Consumer<HomeController>(builder: (context, controller, _) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      controller.mealCategoryResponseModel!.categories!.length,
                  itemBuilder: (context, index) {
                    return categoryListtile(controller
                        .mealCategoryResponseModel!.categories![index]);
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
