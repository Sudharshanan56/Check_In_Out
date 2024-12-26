import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:slider_button/slider_button.dart';
import 'package:http/http.dart' as http;

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool isChecked = false;
  List<dynamic> lst = [];
  bool isLoading = true;

  

  @override
 

  String _locationMessage = "Click the button to get location";

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
        
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("Hey Hussan!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                        ),
                        SizedBox(width: 50,),
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: AssetImage('assets/men.jpg'),
                        ),
                      ],
                    ),
                    
                    Row(
                      children: [
                        Text("Good morning Mark Your attendence",style: TextStyle(fontSize: 20,color: Colors.grey),),
                      ],
                    ),
        
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "06:00 PM",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Oct 26, 2022 - Wednesday",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child:Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Card(
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 120,
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage("assets/logo2.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 16),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Space Infotech Pvt. Ltd.',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        '4 Downsville Hall, Downsville Drive,\nAdmiston, TFS 00F',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Checkbox(
                                                  value: isChecked, // Track the checkbox state
                                                  onChanged: (bool? value) { // Update the checkbox state
                                                    setState(() {
                                                      isChecked = value ?? false;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        SliderButton(
        
                                          action: () async {
                                            // ScaffoldMessenger.of(context).showSnackBar(
                                            //   SnackBar(content: Text("Successfully Punched In!")),
                                            // );
                                            return Future.value(true);
                                          },
                                          label: Text(
                                            "Slide to Punch In",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          icon: Center(
                                            child: Icon(
                                              Icons.double_arrow_sharp,
                                              color: Colors.orangeAccent,
                                              size: 40.0,
                                            ),
                                          ),
                                          width: double.infinity,
                                          radius: 50,
                                          buttonColor: Colors.white,
                                          backgroundColor: Colors.green,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
            //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                              child: Center(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 300,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(1),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                      border: Border.all(
                                        color: Color(0xFF727171),
                                        width: 15,
                                      ),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.touch_app,
                                            size: 40,
                                            color: Colors.red[400],
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            'Check Out',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.red[400],
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade200,
                              ),
                              child: Center(
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffD6D2D2),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            SizedBox(height: 50,),
                                            Center(
                                              child: Icon(
                                                Icons.touch_app,
                                                size: 40,
                                                color: Colors.red,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Check Out',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
        
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
        
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Icon(Icons.more_time,size: 50,color: Color(0xff135416),),
                        Text("09:00 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text("Check In")
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Icon(Icons.more_time,size: 50,color: Color(0xff135416),),
                        Center(child: Column(
                          children: [
                            Text("    --:-- ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        
                          Text("Check Out"),
                      ],
                    ),
                        )
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Icon(Icons.more_time,size: 50,color: Color(0xff135416),),
                        Center(child: Column(
                          children: [
                            Text("   --:-- ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        
                            Text("Total Hrs"),
                          ],
                        ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
        
        
              ],
            ),
          ],
        ),
      ),
    );
  }


}
