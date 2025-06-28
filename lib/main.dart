import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/bottom_navigation.dart';

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
      // home: IntroPage(),
      home: Navigate(),
    ),
  );
}
