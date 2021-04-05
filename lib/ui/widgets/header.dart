import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Header extends StatelessWidget {
  final double height;
  final String title;

  const Header({Key key, this.height, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFF820F),Color(0xFFFB31FF)]),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title, textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 43
          ),
          )),
        ],
      ),
    );
  }
}