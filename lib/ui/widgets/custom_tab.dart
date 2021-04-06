import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  final Function functionForTabs;

  const CustomTab (
      {this.firstTab, this.secondTab, this.functionForTabs});

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
          color: Color(0xFFFF99FF),
          decoration: TextDecoration.none,
          fontSize: 22
      ),
              // TextStyle(color: Colors.grey),
            ),
          ),
          Tab(
            child: Text(
              secondTab,
              style: GoogleFonts.montserrat(
    color: Colors.white,
    decoration: TextDecoration.none,
    fontSize: 22
    ),
              // TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
