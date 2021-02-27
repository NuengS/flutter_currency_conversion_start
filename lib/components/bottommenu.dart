import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CarTaxBottomMenu extends StatelessWidget {
  final _currentBottomMenuIndex;
  final Function setMenu;

  CarTaxBottomMenu(this.setMenu, this._currentBottomMenuIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: _currentBottomMenuIndex,
      iconSize: 30,
      items: [
        BottomNavyBarItem(
          title: Text("Home"),
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: Text("Convert"),
          icon: Icon(
            Icons.calculate,
            color: Colors.green,
          ),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: Text("About Me"),
          icon: Icon(
            Icons.contact_support,
            color: Colors.yellow,
          ),
          activeColor: Colors.white,
        )
      ],
      onItemSelected: (index) {
        setMenu(index);
      },
    );
  }
}
