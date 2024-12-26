import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class Histroypage extends StatefulWidget {
  const Histroypage({super.key});

  @override
  State<Histroypage> createState() => _HistroypageState();
}

class _HistroypageState extends State<Histroypage> {
  final List<Map<String, dynamic>> checkInData = [
    {
      "day": "26",
      "weekDay": "Thu",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
     // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "25",
      "weekDay": "Wed",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
    //  "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "24",
      "weekDay": "Tue",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      //"address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "23",
      "weekDay": "mon",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
     // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "23",
      "weekDay": "sat",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
     // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "22",
      "weekDay": "fri",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "21",
      "weekDay": "thur",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "20",
      "weekDay": "wed",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "19",
      "weekDay": "tue",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "18",
      "weekDay": "mon",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "17",
      "weekDay": "sun",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "16",
      "weekDay": "sat",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
    {
      "day": "15",
      "weekDay": "fri",
      "checkIn": "09:30 AM",
      "checkOut": "06:30 PM",
      "totalHrs": "08:00",
      // "address": "4 Somerville Hall, Somerville Drive, Addresson, TFS GDP",
    },
  ];
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Attendance Histroy")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              // Required parameters
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // Update the focused day too
                });
              },
              // Calendar Style
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(color: Colors.white),
              ),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false, // Hides format toggle
                titleCentered: true, // Centers the month-year title
              ),
            ),
            const SizedBox(height: 10),
            if (_selectedDay != null)
              Text(
                'Selected Date: ${_selectedDay?.toLocal().toIso8601String().split('T').first}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            //================
           // SizedBox(height: 50,),
        
            Container(
              height: 390,
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
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff135416),
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
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff135416),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  // Text(
                                  //   item["address"],
                                  //   style: const TextStyle(
                                  //     fontSize: 12,
                                  //     color: Colors.grey,
                                  //   ),
                                  //),
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
          ],
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
