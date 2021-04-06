import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  final Function functionForTabs;
  final Color colorOfFirstTabTextColor;
  final Color colorOfSecondTabTextColor;

  const CustomTab(
      {this.firstTab,
      this.secondTab,
      this.functionForTabs,
      this.colorOfFirstTabTextColor,
      this.colorOfSecondTabTextColor});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        isScrollable: false,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        indicator: ShapeDecoration(
            shape: UnderlineInputBorder(
          borderSide: BorderSide(
              width: 5, color: Colors.white, style: BorderStyle.solid),
        )),
        onTap: functionForTabs,
        tabs: <Widget>[
          Tab(
            child: Text(
              firstTab,
              style: GoogleFonts.montserrat(
                  color: colorOfFirstTabTextColor,
                  decoration: TextDecoration.none,
                  fontSize: 22),
            ),
          ),
          Tab(
            child: Text(
              secondTab,
              style: GoogleFonts.montserrat(
                  color: colorOfSecondTabTextColor,
                  // Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
