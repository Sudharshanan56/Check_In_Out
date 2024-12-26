// import 'package:check_in_out/LoginScreen.dart';
// import 'package:check_in_out/ProfileScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
// import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
//
//
// import 'HistroyPage.dart';
// import 'noti.dart';
//
//
//
// class navi extends StatefulWidget {
//   @override
//   _naviState createState() => _naviState();
// }
//
// class _naviState extends State<navi> {
//   // Current selected index
//   int _currentIndex = 0;
//
//   // List of pages to navigate
//   final List<Widget> _pages = [
//     Loginscreen(),
//     Histroypage(),
//     ProfileScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: _pages[_currentIndex], // Show the current page
//         bottomNavigationBar: FloatingNavbar(
//           child: SalomonBottomBar(
//
//             duration: Duration(seconds: 1),
//             backgroundColor: Color(0xFF044407),
//             selectedItemColor: Colors.orange,
//             //selectedColorOpacity:0.5,
//             currentIndex: _currentIndex,
//             onTap: (i) => setState(() => _currentIndex = i),
//             items: [
//               // Home Tab
//               SalomonBottomBarItem(
//
//                 icon: Icon(Icons.home, color: Colors.white),
//                 title: Text("Home", style: TextStyle(color: Colors.white)),
//                 selectedColor: Colors.white,
//               ),
//
//               // History Tab
//               SalomonBottomBarItem(
//                 icon: Icon(Icons.calendar_month, color: Colors.white),
//                 title: Text("History", style: TextStyle(color: Colors.white)),
//                 selectedColor: Colors.white,
//               ),
//
//               // Profile Tab
//               SalomonBottomBarItem(
//                 icon: Icon(Icons.person_sharp, color: Colors.white),
//                 title: Text("Profile", style: TextStyle(color: Colors.white)),
//                 selectedColor: Colors.white,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // Page 1: Home Page
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "Home Page",
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
//
// // Page 2: History Page
// class HistoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "History Page",
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
//
// // Page 3: Profile Page
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "Profile Page",
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
//
//
// // import 'package:flutter/material.dart';
//
//
// //
// // class navi extends StatefulWidget {
// //   @override
// //   _naviState createState() => _naviState();
// // }
// //
// // class _naviState extends State<navi> {
// //   int _currentIndex = 0;
// //
// //   final List<Widget> _pages = [
// //     Loginscreen(),
// //     Histroypage(),
// //     ProfileScreen(),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //       body: _pages[_currentIndex],
// //       bottomNavigationBar: Container(
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           boxShadow: [
// //             BoxShadow(
// //               color: Colors.black12,
// //               blurRadius: 8,
// //             ),
// //           ],
// //         ),
// //         child: BottomNavigationBar(
// //           currentIndex: _currentIndex,
// //           onTap: (index) {
// //             setState(() {
// //               _currentIndex = index;
// //             });
// //           },
// //           type: BottomNavigationBarType.fixed,
// //           selectedItemColor: Colors.green,
// //           unselectedItemColor: Colors.grey,
// //           showSelectedLabels: true,
// //           showUnselectedLabels: true,
// //           items: [
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.home),
// //               label: 'Home',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.calendar_today),
// //               label: 'Calendar',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
