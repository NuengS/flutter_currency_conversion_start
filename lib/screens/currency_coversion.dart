import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_currency_conversion/components/currency_conversion/currency_selection.dart';
import './result.dart';
import '../components/currency_conversion/currency_rate.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String fromCurrency = "THB";
  String toCurrency = "USD";
  final currencyValue = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void fromCurrencyChange(String newFromCurrency) {
    setState(() {
      fromCurrency = newFromCurrency;
    });
  }

  void toCurrencyChange(String newToCurrency) {
    setState(() {
      toCurrency = newToCurrency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: currencyValue,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Number';
              }
              return null;
            },
            inputFormatters: [
              // ignore: deprecated_member_use
              WhitelistingTextInputFormatter(RegExp("[0-9]"))
            ],
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Enter your currencyValue",
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "From Currency:",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CurrencySelection(fromCurrency, fromCurrencyChange),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "To Currency:",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CurrencySelection(toCurrency, toCurrencyChange),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              //Code Here
              if (_formKey.currentState.validate()) {
                final covertedValue = CurrencyExchangeRate.covertCurrency(
                    double.parse(currencyValue.text), fromCurrency, toCurrency);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Result(double.parse(currencyValue.text),
                          covertedValue, fromCurrency, toCurrency);
                    },
                  ),
                );
              }
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red[500],
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "CONVERT !",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
