import 'package:flutter/material.dart';

class CheckInList extends StatelessWidget {
  final List<Map<String, dynamic>> checkInData = [
    {
      "day": "26",
      "weekDay": "Thu",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "25",
      "weekDay": "Wed",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "24",
      "weekDay": "Tue",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
  ];

  CheckInList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-In Records'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 400,
        width: double.infinity,
        child: ListView.builder(
          itemCount: checkInData.length,
          itemBuilder: (context, index) {
            final item = checkInData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item["day"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item["weekDay"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildInfoText("Check In", item["checkIn"]),
                                    _buildInfoText("Check Out", item["checkOut"]),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Total Hrs",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      item["totalHrs"],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item["address"],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoText(String title, String value) {
    return Row(
      children: [
        Text(
          "$title: ",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
