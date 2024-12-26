// import 'package:flutter/material.dart';
// import 'package:overlay_support/overlay_support.dart';
// import 'package:slider_button/slider_button.dart';
//
// // Define the Noti class for showing notifications
// class Noti {
//   static void showTopNotification(BuildContext context) {
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
// }
//
// class HomePage_x extends StatefulWidget {
//   const HomePage_x({super.key});
//
//   @override
//   State<HomePage_x> createState() => _HomePage_xState();
// }
//
// class _HomePage_xState extends State<HomePage_x> {
//   bool isChecked = false; // Track the checkbox state
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Text("Danniel Russel"),
//         actions: [
//           CircleAvatar(
//             backgroundImage: AssetImage('assets/person.jpg'),
//           ),
//           const SizedBox(width: 16),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 const SizedBox(height: 20),
//                 Text(
//                   "06:00 PM",
//                   style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "Oct 26, 2022 - Wednesday",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 Center(
//                   child: GestureDetector(
//                     onTap: () {
//                       showModalBottomSheet(
//                         context: context,
//                         builder: (context) {
//                           return Container(
//                             padding: EdgeInsets.all(16),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Card(
//                                   elevation: 3,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(16),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           height: 120,
//                                           width: 120,
//                                           decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             image: DecorationImage(
//                                               image: AssetImage("assets/logo2.jpg"),
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(width: 16),
//                                         Expanded(
//                                           child: Column(
//                                             crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Space Infotech Pvt. Ltd.',
//                                                 style: TextStyle(
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.bold,
//                                                 ),
//                                               ),
//                                               const SizedBox(height: 4),
//                                               Text(
//                                                 '4 Downsville Hall, Downsville Drive,',
//                                                 style: TextStyle(
//                                                   fontSize: 14,
//                                                   color: Colors.grey,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Checkbox(
//                                           value: isChecked, // Track the checkbox state
//                                           onChanged: (bool? value) { // Update the checkbox state
//                                             setState(() {
//                                               isChecked = value ?? false;
//                                             });
//                                           },
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 40),
//                                 // Use IgnorePointer to disable SliderButton if checkbox is unchecked
//                                 IgnorePointer(
//                                   ignoring: !isChecked, // Disable button when checkbox is unchecked
//                                   child: SliderButton(
//                                     action: () async {
//                                       // Trigger the notification when slider is triggered
//                                       Noti.showTopNotification(context); // Call the notification function
//                                       return Future.value(true);
//                                     },
//                                     label: Text(
//                                       "Slide to Punch In",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                     icon: Center(
//                                       child: Icon(
//                                         Icons.check,
//                                         color: Colors.orangeAccent,
//                                         size: 40.0,
//                                       ),
//                                     ),
//                                     width: double.infinity,
//                                     radius: 50,
//                                     buttonColor: Colors.white,
//                                     backgroundColor: Colors.green,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       );
//                     },
//                     child: Container(
//                       height: 120,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey[200],
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Icon(Icons.logout, size: 32, color: Colors.red),
//                           SizedBox(height: 8),
//                           Text(
//                             "Check Out",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.red,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
// }
