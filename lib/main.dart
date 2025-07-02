import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:mykitchenapp/screens/startup/intro_page.dart';
// import 'package:mykitchenapp/Trending_Page/trending_page.dart';
// import 'package:mykitchenapp/screens/Calendar/calendar.dart';
=======
import 'package:mykitchenapp/bottom_navigation.dart';
>>>>>>> 1aac4bca0de443446338636aa90f5a60d6cc4d02

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(255, 241, 183, 45),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(248, 244, 235, 1),
        ),
      ),
<<<<<<< HEAD
      home: const IntroPage(),
      // home: TrendingRecipesPage(),
      // home: const PlanYourDayScreen(),
=======
      // home: IntroPage(),
      home: Navigate(),
>>>>>>> 1aac4bca0de443446338636aa90f5a60d6cc4d02
    ),
  );
}
