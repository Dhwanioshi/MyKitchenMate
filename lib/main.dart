import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:mykitchenapp/screens/startup/intro_page.dart';
// import 'package:mykitchenapp/Trending_Page/trending_page.dart';
import 'package:mykitchenapp/Calendar/calendar.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color.fromRGBO(248, 244, 235, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(248, 244, 235, 1),
        ),
      ),
      // home: const IntroPage(),
      // home: TrendingRecipesPage(),
      home: const PlanYourDayScreen(),
    ),
  );
}
