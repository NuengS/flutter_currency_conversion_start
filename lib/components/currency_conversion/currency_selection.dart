import 'package:flutter/material.dart';

class CurrencySelection extends StatelessWidget {
  final String _selectedCurrency;
  final Function _selectNewCurrency;
  CurrencySelection(this._selectedCurrency, this._selectNewCurrency);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('THB');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'THB')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "THB",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'THB')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('USD');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'USD')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ), //Replace Code

                  child: Center(
                    child: Text(
                      "USD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'USD')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('HKD');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'HKD')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "HKD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'HKD')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('AUD');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'AUD')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black, //Replace Code
                  ),
                  child: Center(
                    child: Text(
                      "AUD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'AUD')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('JPY');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'JPY')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black, //Replace Code
                  ),
                  child: Center(
                    child: Text(
                      "JPY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'JPY')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('GBP');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'GBP')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black, //Replace Code
                  ),
                  child: Center(
                    child: Text(
                      "GBP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'GBP')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('KRW');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'KRW')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black, //Replace Code
                  ),
                  child: Center(
                    child: Text(
                      "KRW",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'KRW')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _selectNewCurrency('CNY');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (_selectedCurrency == 'CNY')
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black, //Replace Code
                  ),
                  child: Center(
                    child: Text(
                      "CNY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: (_selectedCurrency == 'CNY')
                              ? Colors.yellow
                              : Colors.green, //Replace Code
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
