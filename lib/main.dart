
import 'package:flutter/material.dart';

import 'BottomNavi.dart';
import 'HistroyPage.dart';
import 'Homepage.dart';
import 'Login.dart';
import 'LoginScreen.dart';
import 'Navi_test.dart';
import 'ProfileScreen.dart';
import 'Splash.dart';
import 'listx.dart';
import 'nav.dart';
import 'noti.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splash(),
    );
  }
}
