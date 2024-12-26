import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Column(
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
                                      image: AssetImage("assets/logo.jpg"),
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Successfully Punched In!")),
                            );
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
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffEFDBFF),
              ),
              child: Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      height: 200,
                      width: 200,
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
                                size: 50,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Check Out',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
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
    );
  }
}
