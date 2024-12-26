import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'HistroyPage.dart';
import 'LoginScreen.dart';
import 'ProfileScreen.dart';

class navi_home extends StatefulWidget {
  @override
  _navi_homeState createState() => _navi_homeState();
}

class _navi_homeState extends State<navi_home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Loginscreen(),
    Histroypage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xff023605),
          borderRadius: BorderRadius.circular(30), // Curved edges
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        margin: EdgeInsets.all(16), // Margin for spacing around the bar
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 10,
            activeColor: Colors.white,
            iconSize: 30,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 200),
            tabBackgroundColor: Color(0xffA7761E), // Active tab background color
            color: Colors.white, // Inactive icon color
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: "History",
              ),
              GButton(
                icon: Icons.person_sharp,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
