import 'package:flutter/material.dart';
import '../components/bottommenu.dart';
import '../components/tabmenu.dart';

class CarTaxCalculator extends StatefulWidget {
  CarTaxCalculatorState createState() => CarTaxCalculatorState();
}

class CarTaxCalculatorState extends State<CarTaxCalculator> {
  int _currentMenuIndex = 0;

  void setMenu(int newIndex) {
    setState(() {
      _currentMenuIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "CURRENCY CONVERSION",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: CurrencyConversionTabMenu(_currentMenuIndex),
      bottomNavigationBar: CarTaxBottomMenu(setMenu, _currentMenuIndex),
    );
  }
}
