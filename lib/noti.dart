// import 'package:flutter/material.dart';
// import 'package:overlay_support/overlay_support.dart';
//
//
//
// class noti extends StatelessWidget {
//   void showTopNotification(BuildContext context) {
//     showSimpleNotification(
//       Text("SPACE ATTENDANCE"),
//       subtitle: Text("Check Out\nToday at 06:30 PM"),
//       background: Colors.green,
//       foreground: Colors.white,
//       leading: Icon(Icons.notifications, color: Colors.white),
//       slideDismiss: true,
//       duration: Duration(seconds: 3),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return OverlaySupport.global(
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Text("Top Notification Example")),
//           body: Center(
//             child: ElevatedButton(
//               onPressed: () => showTopNotification(context),
//               child: Text("Show Top Notification"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:slider_button/slider_button.dart';

class Noti_x extends StatefulWidget {
  @override
  State<Noti_x> createState() => _Noti_xState();
}

class _Noti_xState extends State<Noti_x> {
  bool isChecked=false;
  // Function to show the top notification
  void showTopNotification(BuildContext context) {
    showSimpleNotification(
      Text("SPACE ATTENDANCE"),
      subtitle: Text("Check Out\nToday at 06:30 PM"),
      background: Colors.green,
      foreground: Colors.white,
      leading: Icon(Icons.notifications, color: Colors.white),
      slideDismiss: true,
      duration: Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        home: Scaffold(
      //   appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text("Danniel Russel"
      //   ),
      //   actions: [
      //     CircleAvatar(
      //       backgroundImage: AssetImage('assets/person.jpg'),
      //     ),
      //     const SizedBox(width: 16),
      //   ],
      // ),
          body: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text("Hey Hassan!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/person.jpg'),
                                ),
                    ),

                  ],
                ),
                Text("Good morning! Mark your attendance",style: TextStyle(fontSize: 20),),
                SizedBox(height: 100,),
                Text(
                  "09:30 PM",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Center(
                  child: Text(
                    "Oct 26, 2022 - Wednesday",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                Center(
                  child: GestureDetector(
                    onTap: () {
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
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage("assets/logo.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                '4 Downsville Hall, Downsville Drive,',
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
                                // Use IgnorePointer to disable SliderButton if checkbox is unchecked
                                SliderButton(
                                  action: () async {

                                    // Show notification after successful slider action
                                    showTopNotification(context);
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
                                      Icons.check,
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
                    },
                    child: Container(
                      height: 120,
                      width: 120,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.logout, size: 32, color: Colors.red),
                          SizedBox(height: 8),
                          Text(
                            "Check In",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("This button is now unnecessary"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
