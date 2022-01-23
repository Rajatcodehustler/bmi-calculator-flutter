import 'package:bmi_calculator/Results%20page.dart';
import 'package:flutter/material.dart';
import 'input page.dart';
import 'Results page.dart';
import 'CalculatorBMI.dart';
calculatorBMI calc1=calculatorBMI();
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '1',
      routes: {
        '1':(context) =>InputPage(),
        '2': (context) =>Resultspage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),

    );
  }
}

