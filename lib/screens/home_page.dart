import 'package:flutter/material.dart';
<<<<<<< HEAD
// import 'package:flutter/widgets.dart';
import 'package:mykitchenapp/styling/navigation.dart';
import 'package:mykitchenapp/screens/Trending_Page/trending_page.dart';
=======
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/dummy_data/sample_recipes.dart';
import 'package:mykitchenapp/screens/Trending_Page/trending_page.dart';
import 'package:mykitchenapp/screens/settings/history.dart';
import 'package:mykitchenapp/widgets/itemgrid.dart';
>>>>>>> 1aac4bca0de443446338636aa90f5a60d6cc4d02

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double appBarHeight = AppBar().preferredSize.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: appBarHeight),
                const Text(
                  "Hi! Dhwani",
                  style: TextStyle(
                    color: Color.fromRGBO(86, 106, 79, 1),
                    fontSize: 25,
                  ),
                ),
                const Text("What are you cooking today?"),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrendingRecipesPage(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
=======
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi! Dhwani",
                style: TextStyle(color: Color.fromRGBO(86, 106, 79, 1)),
              ),
              const Text(
                "What are you cooking today?",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => TrendingRecipesPage()),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
>>>>>>> 1aac4bca0de443446338636aa90f5a60d6cc4d02
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Trending Recipe ",
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(86, 106, 79, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color.fromRGBO(86, 106, 79, 1),
                            size: 15,
                            weight: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Container(
                                height: double.infinity,
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
                                    left: 10,
                                    right: 15,
                                    bottom: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              dummyRecipes[0].name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                          const SizedBox(width: 50),
                                          Opacity(
                                            opacity: 0.7,
                                            child: const Icon(
                                              Icons.timer_outlined,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            dummyRecipes[0].time,
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              dummyRecipes[0].shortDescription,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                  255,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                          const SizedBox(width: 50),

                                          Opacity(
                                            opacity: 0.7,
                                            child: const Icon(
                                              Icons.star_rate_rounded,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            dummyRecipes[0].rating.toString(),
                                            style: const TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -4,
                              left: 0,
                              right: 0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    dummyRecipes[0].imagePath,
                                    height: 140,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
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
                      ),
                    ],
                  ),
                ),
<<<<<<< HEAD
                Card(child: Image.asset('assets/images/Categories/Dinner.png')),
              ],
=======
              ),
            ),
            const SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return History(
                        title: "Your Recipes",
                        listOfRecipes: dummyRecipes,
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 255,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(235, 214, 185, 40),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Recipes",
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See All ->",
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyRecipes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      dummyRecipes[index].imagePath,
                                      height: 150,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    dummyRecipes[index].name,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(86, 106, 79, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
>>>>>>> 1aac4bca0de443446338636aa90f5a60d6cc4d02
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Recently Added",
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(86, 106, 79, 1),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // const SizedBox(height: ),
            Itemgrid(selectedRecipes: dummyRecipes, currentPage: "Home"),
          ],
        ),
      ),
      bottomNavigationBar: Navigation(),
    );
  }
}
