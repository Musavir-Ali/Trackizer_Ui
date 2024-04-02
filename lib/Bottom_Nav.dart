import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trackizer/Add.dart';
import 'package:trackizer/Calender.dart';
import 'package:trackizer/CreditCard.dart';
import 'package:trackizer/Spendings.dart';
import 'package:trackizer/Subscriptions.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _page = 0;
final screens = [
  Subs(),
  Spendings(),
  Add(),
  Calender(),
  CreditCard(),
];

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.black,
        color: Color.fromRGBO(78, 78, 97, 100),
        buttonBackgroundColor: Color.fromARGB(255, 255, 98, 0),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.apps,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.calendar_month,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet,
            size: 20,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
          // if (_page == 1) {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => Spendings()),
          //   );
          // }
        },
      ),
    );
  }
}
