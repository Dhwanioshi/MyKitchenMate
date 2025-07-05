import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/bottom_navigation.dart';

// import 'package:mykitchenapp/screens/home_page.dart';
import 'package:mykitchenapp/screens/startup/signup.dart';
import 'package:mykitchenapp/widgets/appbar.dart';
import 'package:mykitchenapp/widgets/text_enter.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Log In"),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextEnter("Email", "example@gmail.com"),
            const SizedBox(height: 20),
            const TextEnter("Password", "Password"),
            const SizedBox(height: 15),
            ListTile(
              title: const Text(
                "Remember me",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              leading: Checkbox(
                activeColor: const Color.fromRGBO(86, 106, 79, 1),
                value: isChecked,
                onChanged: (bool? val) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Navigate()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                backgroundColor: const Color.fromRGBO(86, 106, 79, 1),
              ),
              child: Text(
                "Log In",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                backgroundColor: const Color.fromRGBO(86, 106, 79, 1),
              ),
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
