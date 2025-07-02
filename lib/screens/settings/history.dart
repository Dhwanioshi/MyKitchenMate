import 'package:flutter/material.dart';
import 'package:mykitchenapp/modals/recipe_model.dart';
import 'package:mykitchenapp/widgets/appbar.dart';
import 'package:mykitchenapp/widgets/itemgrid.dart';

class History extends StatelessWidget {
  const History({super.key, required this.title, required this.listOfRecipes});

  final String title;
  final List<RecipeModel> listOfRecipes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title,
      ),
      body: Itemgrid(
        selectedRecipes: listOfRecipes,
      ),
    );
  }
}
