import 'package:flutter/material.dart';
import '../screens/currency_coversion.dart';
import '../screens/home.dart';
import '../screens/about.dart';

class CurrencyConversionTabMenu extends StatelessWidget {
  final List<Widget> tabs = [
    Center(
      child: Home(),
    ),
    Center(
      child: Converter(),
    ),
    Center(
      child: About(),
    ),
  ];

  final _currentTabIndex;

  CurrencyConversionTabMenu(this._currentTabIndex);

  @override
  Widget build(BuildContext context) {
    return tabs[_currentTabIndex];
  }
}
