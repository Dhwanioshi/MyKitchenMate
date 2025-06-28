import 'package:flutter/material.dart';
import 'package:mykitchenapp/dummy_data/sample_recipes.dart';
import 'package:mykitchenapp/screens/Search/whatiskitchen.dart';
import 'package:mykitchenapp/screens/itemdetail.dart';

class MainSearchPage extends StatelessWidget {
  const MainSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              hintStyle: const TextStyle(color: Colors.white),
              filled: true,
              fillColor: const Color(0xFFECC856),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.all(1),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFECC856),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) {
                          return WhatsInKitchenPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "What ’s In Your Kitchen?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFECC856),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.filter_list, color: Colors.white),
                label: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailPage(recipe: dummyRecipes[1]),
                ),
              );
            },
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 150,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(86, 106, 79, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 8,
                            top: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dummyRecipes[1].name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "Nutritions: Energy ${dummyRecipes[1].nutrients["calories"]} Kcal, "
                                "Protein ${dummyRecipes[1].nutrients["protein"]}, Sugar ${dummyRecipes[1].nutrients["carbs"]}",
                                style: const TextStyle(fontSize: 11),
                              ),
                              Text(
                                "Cooking Time: ${dummyRecipes[1].time}",
                                style: const TextStyle(fontSize: 11),
                              ),
                              Text(
                                "Recipe By: ${dummyRecipes[1].author}",
                                style: const TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        dummyRecipes[1].imagePath,
                        height: 140,
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
