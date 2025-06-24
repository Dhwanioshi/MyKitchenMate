import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/startup/login.dart';
import 'package:mykitchenapp/styling/appbar.dart';
import 'package:mykitchenapp/styling/text_enter.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Sign Up"),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextEnter("Full Name", "Dhwani Joshi"),
              const SizedBox(
                height: 10,
              ),
              const TextEnter("Email", "example@gmail.com"),
              const SizedBox(
                height: 10,
              ),
              const TextEnter("Mobile Number", "+91 9898989898"),
              const SizedBox(
                height: 10,
              ),
              const TextEnter("Date Of Birth", "DD / MM / YYYY"),
              const SizedBox(
                height: 10,
              ),
              const TextEnter("Password", "password"),
              const SizedBox(
                height: 10,
              ),
              const TextEnter("Confirm Password", "confirm password"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
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
      ),
    );
  }
}
