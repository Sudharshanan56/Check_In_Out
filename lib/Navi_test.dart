import 'package:check_in_out/LoginScreen.dart';
import 'package:check_in_out/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'HistroyPage.dart';
import 'noti.dart';

class navi extends StatefulWidget {
  @override
  _naviState createState() => _naviState();
}

class _naviState extends State<navi> {
  // Current selected index
  int _currentIndex = 0;

  // List of pages to navigate
  final List<Widget> _pages = [
    Loginscreen(),
    Histroypage(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_currentIndex], // Show the current page
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF044407),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: SalomonBottomBar(
            duration: Duration(seconds: 1),
            selectedItemColor: Color(0xffB52A00),
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              // Home Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.home, color: Colors.white,),
                title: Text("Home", style: TextStyle(color: Colors.white)),
                selectedColor: Colors.white,

              ),

              // History Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.calendar_month, color: Colors.white),
                title: Text("History", style: TextStyle(color: Colors.white)),
                selectedColor: Colors.white,
              ),

              // Profile Tab
              SalomonBottomBarItem(

                icon: Icon(Icons.person_sharp, color: Colors.white),
                title: Text("Profile", style: TextStyle(color: Colors.white)),
                selectedColor: Colors.orange,

              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Page 1: Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home Page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Page 2: History Page
class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "History Page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Page 3: Profile Page
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile Page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.deepOrange),
      ),
    );
  }
}