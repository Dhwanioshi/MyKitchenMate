import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:mykitchenapp/Profile/edit_profile.dart';
import 'package:mykitchenapp/startup/intro_page.dart';

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
      home: const IntroPage(),    
    ),
  );
}


     