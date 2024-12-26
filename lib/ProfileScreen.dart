import 'package:flutter/material.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset("assets/bg.jpg"),
            ),
          ),
          // Profile Content
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Profile Picture
                const CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage("assets/men.jpg"),
                  ),

                const SizedBox(height: 10),
                // Profile Name
                const Text(
                  "Dianne Russell",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Phone Number
                const Text(
                  "+44 797 577 7666",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                // Buttons: Edit Profile and Log Out
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.edit, color: Colors.green,size: 30,),
                          title: const Text("Edit Profile",style: TextStyle(fontSize: 25),),
                          trailing: const Icon(Icons.arrow_forward_ios, size: 30),
                          onTap: () {
                            // Edit Profile Action
                          },
                        ),
                        SizedBox(height: 20,),
                        Divider(),
                        SizedBox(height: 20,),
                        ListTile(
                          leading: const Icon(Icons.logout, color: Colors.red,size: 30,),
                          title: const Text("Log Out",style: TextStyle(fontSize: 25),),
                          trailing: const Icon(Icons.arrow_forward_ios, size: 30),
                          onTap: () {
                            // Log Out Action
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Bottom Navigation Bar

    );
  }
}
