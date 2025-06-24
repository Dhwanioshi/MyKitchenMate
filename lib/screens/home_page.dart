import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
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
                const Text(
                  "What are you cooking today?",
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Trending Recipe ",
                        style: TextStyle(
                          color: Color.fromRGBO(86, 106, 79, 1),
                          fontSize: 20,
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
                ),
                Card(
                  child: Image.asset(
                    'aasets/images/pizza photo.jpg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
