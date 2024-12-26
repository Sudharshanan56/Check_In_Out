import 'dart:async';
// import 'package:check_in_out/playground/test.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'nav.dart';



class splash extends StatefulWidget {

  @override
  _splashState createState() => _splashState();

}
class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => navi_home()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
         color: Color(0xff023605)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Column(
              children: [
                Text("Check In Out",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 10,),
                Text("Value Your Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            )),

            SizedBox(height: 300,),

            // LoadingAnimationWidget.dotsTriangle(color: Colors.white54, size: 50),
            LoadingAnimationWidget.fourRotatingDots(color: Colors.white, size: 100),

          ],
        ),
      ),
    );
  }
}

