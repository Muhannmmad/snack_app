import 'package:flutter/material.dart';
import 'package:snack_app/screens/snack_start.dart';

void main() {
  runApp(Snack());
}

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackScreen(),
    );
  }
}
