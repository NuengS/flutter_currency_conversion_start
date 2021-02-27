import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'main_screen.dart';
import '../components/currency_conversion/currency_rate.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    CurrencyExchangeRate();
    var d = Duration(seconds: 5);
    Future.delayed(
      d,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => CarTaxCalculator(),
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
          ),
        ),
        /*  Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('images/currency.gif'),
          ),
        ), */
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: TyperAnimatedTextKit(
              text: [
                "CURRENCY\nCONVERSION",
              ],
              textStyle: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              speed: Duration(milliseconds: 200),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
          ),
        ),
      ]),
    );
  }
}
