import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(86, 106, 79, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.calendar_month_outlined,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.calendar_month_outlined,
          ),
          Icon(
            Icons.home_filled,
          ),
          Icon(
            Icons.category_outlined,
          ),
          Icon(
            Icons.account_circle,
          ),
        ],
      ),
    );
  }
}
