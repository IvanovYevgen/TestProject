import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final Icon icon;
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final Color textColor;
  final Color textFieldColor;
  final TextAlign textAlign;

  const CustomTextField(
      {this.icon,
      this.hint,
      this.controller,
      this.obscure,
      this.textColor,
      this.textFieldColor,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              height: 48,
              child: TextField(
                textAlign: textAlign,
                obscureText: obscure,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  prefixIcon: icon,
                  filled: true,
                  hintStyle: GoogleFonts.montserrat(
                      color: textColor,
                      decoration: TextDecoration.none,
                      fontSize: 22),
                  hintText: hint,
                  contentPadding: EdgeInsets.fromLTRB(20, 4, 0, 0),
                  fillColor: textFieldColor,
                  // Color(0xFFEBEBEB)),
                ),
              )),
        ),
      ],
    );
  }
}
