import 'package:flutter/material.dart';
import 'package:mykitchenapp/modals/recipe_model.dart';
import 'package:mykitchenapp/screens/itemdetail.dart';

class Itemgrid extends StatelessWidget {
  const Itemgrid({super.key, required this.selectedRecipes, this.currentPage});
  final List<RecipeModel> selectedRecipes;
  final String? currentPage;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: currentPage == "Home"
          ? const EdgeInsets.symmetric(horizontal: 10)
          : const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),

      physics: currentPage == "Home"
          ? const NeverScrollableScrollPhysics()
          : null,
      shrinkWrap: currentPage == "Home" ? true : false,
      itemCount: selectedRecipes.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ItemDetailPage(recipe: selectedRecipes[index]),
              ),
            );
          },
          child: Stack(
            children: [
              Positioned(
                bottom: 15,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 9.0, right: 9),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(86, 106, 79, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedRecipes[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 1,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            selectedRecipes[index].shortDescription,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height: 15),
                          Opacity(
                            opacity: 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.star_rate_rounded,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Text(
                                  selectedRecipes[index].rating.toString(),
                                  style: const TextStyle(fontSize: 13),
                                ),
                                const SizedBox(width: 15),
                                
                                Text(
                                  selectedRecipes[index].time,
                                  style: const TextStyle(fontSize: 13),
                                ),
                                const Icon(
                                  Icons.timer_outlined,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
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
                    selectedRecipes[index].imagePath,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromRGBO(86, 106, 79, 1),
                  child: Icon(
                    Icons.favorite_border,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
