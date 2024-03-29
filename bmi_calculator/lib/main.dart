import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(const BMIcalculator());
}


class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF0A0E21),
        secondaryHeaderColor:const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme:const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          )
        )
      ),
      home: InputPage(),
    );

  }
}