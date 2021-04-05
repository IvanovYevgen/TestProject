import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final Icon icon;
  final String hint;
  final TextEditingController controller;
  final bool obscure;

  const CustomTextField({this.icon, this.hint, this.controller, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 48,
          child: TextField(
            obscureText: obscure,
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xFFEBEBEB)),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30),
                  ),
                ),
                prefixIcon: icon,
                filled: true,
                hintStyle: GoogleFonts.montserrat(
                    color: Color(0xFFB5B5B5),
                    decoration: TextDecoration.none,
                    fontSize: 22),
                hintText: hint,
                contentPadding: EdgeInsets.fromLTRB(20, 4, 0, 0),
                fillColor: Color(0xFFEBEBEB)),
          ),
        )),
      ],
    );
  }
}
