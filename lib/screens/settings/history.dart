import 'package:flutter/material.dart';
import 'package:mykitchenapp/dummy_data/sample_recipes.dart';
import 'package:mykitchenapp/widgets/appbar.dart';
import 'package:mykitchenapp/widgets/itemgrid.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        "History",
      ),
      body: Itemgrid(
        selectedRecipes: dummyRecipes,
      ),
    );
  }
}
