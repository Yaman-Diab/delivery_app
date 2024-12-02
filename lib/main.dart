import 'package:delivary_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(delivary_app());
}

class delivary_app extends StatelessWidget {
  delivary_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
