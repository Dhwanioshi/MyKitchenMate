import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/bottom_navigation.dart';
// import 'package:mykitchenapp/screens/startup/intro_page.dart';
<<<<<<< HEAD
=======
// import 'package:mykitchenapp/Trending_Page/trending_page.dart';
import 'package:mykitchenapp/screens/Calendar/calendar.dart';
>>>>>>> 6dafce0e99d591261f075bc654a5d0fadceaa3d5

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
      // home: IntroPage(),
      home: Navigate(),
    ),
  );
}
