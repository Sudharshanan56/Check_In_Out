import 'package:flutter/material.dart';



class PunchInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punch In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://via.placeholder.com/50', // Replace with actual logo URL
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Space Infotech Pvt. Ltd.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '4 Downsville Hall, Downsville Drive,\nAdmiston, TFS 00F',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
