import 'package:flutter/material.dart';
import 'screens/import_screen.dart';

Color colorCream = Color(0xFFf9daa4);
Color colorBrown = Color(0xFF4f3c2e);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImportScreen(),
    );
  }
}
