import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumButton extends StatelessWidget {
  final String text;
  final String url;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final Function function;
  final double internalPadding;

  const MediumButton(
      {this.text,
      this.url,
      this.buttonColor,
      this.textColor,
      this.fontSize,
      this.function,
      this.internalPadding});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 35,
              width: 35,
              child: Image.asset(
                url,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: internalPadding),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                  color: textColor,
                  decoration: TextDecoration.none,
                  fontSize: fontSize),
            ),
          )
        ],
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: function,
    );
  }
}
