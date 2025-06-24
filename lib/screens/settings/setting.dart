import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mykitchenapp/screens/languages.dart';
import 'package:mykitchenapp/screens/settings/history.dart';
import 'package:mykitchenapp/screens/startup/intro_page.dart';

import 'package:mykitchenapp/widgets/appbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"icon": Icons.history, "text": "History"},
      {"icon": Icons.help_outline, "text": "Help Center"},
      {"icon": Icons.privacy_tip_outlined, "text": "Privacy Policy"},
      {"icon": Icons.language, "text": "Language"},
      {"icon": Icons.logout, "text": "Log Out"},
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 244, 235, 1),
      appBar: const CustomAppbar("Settings"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: TextButton(
                  onPressed: () {
                    item["text"] == "History"
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const History(),
                            ),
                          )
                        : item["text"] == "Language"
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => const Languages(),
                                ),
                              )
                            : item["text"] == "Log Out"
                                ? showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: const Text("Log Out"),
                                      content: const Text(
                                          "Are you sure you want to log out?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(ctx);
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(ctx);
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (ctx) =>
                                                    const IntroPage(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Log Out",
                                            style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : null;
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromRGBO(86, 106, 79, 1),
                        child:
                            Icon(item["icon"] as IconData, color: Colors.white),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          item["text"] as String,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromRGBO(86, 106, 79, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.play_arrow_outlined,
                        size: 36,
                        color: Color.fromRGBO(86, 106, 79, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Delete Account"),
                    content: const Text(
                        "Are you sure you want to delete your account? This action cannot be undone."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(ctx);
                        },
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const IntroPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Delete",
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                "Delete Account",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: const Color.fromRGBO(86, 106, 79, 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
