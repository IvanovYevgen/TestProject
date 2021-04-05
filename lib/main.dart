import 'package:flutter/material.dart';
import 'package:test_project/ui/screens/log_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Project',
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}

