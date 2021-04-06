import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBuilder extends StatelessWidget {
  final String text;
  final Color color;
  final double textSize;

  const TextBuilder({
    this.text,
    this.color,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          color: color, decoration: TextDecoration.none, fontSize: textSize),
    );
  }
}
