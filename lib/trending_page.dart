import 'package:flutter/material.dart';
import 'package:mykitchenapp/trending_recipe_template.dart';

class TrendingRecipesPage extends StatelessWidget {
  TrendingRecipesPage({super.key});

  final List<TrendingRecipe> recipes = [
    TrendingRecipe(
      title: 'Flan',
      description: 'Delicious slices of bread',
      imagePath: 'assets/images/Trending/Tiramisu.jpg',
      time: '30min',
      energy: 480,
      protein: 30,
      sugar: 4,
      chef: 'Chef Binod',
      note: 'Contains Dairy',
    ),
    TrendingRecipe(
      title: 'Panna Cotta',
      description: 'Italian creamy dessert',
      imagePath: 'assets/images/Trending/Tiramisu.jpg',
      time: '25min',
      energy: 410,
      protein: 28,
      sugar: 5,
      chef: 'Chef Mario',
      note: 'Contains Gelatin',
    ),
    TrendingRecipe(
      title: 'Cheesecake',
      description: 'Soft and rich in flavor',
      imagePath: 'assets/images/Trending/Tiramisu.jpg',
      time: '45min',
      energy: 520,
      protein: 35,
      sugar: 8,
      chef: 'Chef Linda',
      note: 'Contains Gluten & Dairy',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDF9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black87),
        title: const Text('Trending', style: TextStyle(color: Colors.black87)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.close, color: Colors.black87),
          )
        ],
      ),
      body: PageView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    recipe.imagePath,
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recipe.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(height: 4),
                      Text(recipe.description,
                          style: const TextStyle(color: Colors.grey)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.timer,
                              size: 16, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(recipe.time,
                              style: const TextStyle(color: Colors.grey)),
                          const Spacer(),
                          const Row(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.green, size: 20),
                              Icon(Icons.star,
                                  color: Colors.green, size: 20),
                              Icon(Icons.star,
                                  color: Colors.green, size: 20),
                              Icon(Icons.star,
                                  color: Colors.green, size: 20),
                              Icon(Icons.star,
                                  color: Colors.green, size: 20),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text('Nutritions',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(
                          'Energy ${recipe.energy} Kcal\nProtein ${recipe.protein}g\nSugar ${recipe.sugar}g'),
                      const SizedBox(height: 8),
                      Text('Recipe By ${recipe.chef}',
                          style: const TextStyle(
                              fontStyle: FontStyle.italic)),
                      const SizedBox(height: 4),
                      Text(recipe.note,
                          style: const TextStyle(color: Colors.redAccent)),
                      const SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade700,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Text('Cook This'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 35, 135, 40),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: ''),
        ],
      ),
    );
  }
}
