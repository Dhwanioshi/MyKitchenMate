import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextEnter extends StatelessWidget {
  const TextEnter(this.type, this.hint, {super.key});
  final String type;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 13),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 45,
          width: 350,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(86, 106, 79, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 4),
                color: Color.fromARGB(92, 0, 0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8, top: 8),
            child: TextFormField(
              cursorColor: Colors.white,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: const TextStyle(
                    color: Color.fromARGB(187, 255, 255, 255), fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
