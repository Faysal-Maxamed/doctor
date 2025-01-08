import 'package:flutter/material.dart';

class DoctorsDetailScreen extends StatelessWidget {
  const DoctorsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff90e0ef),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.menu_open, size: 30),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Dr.pheyzal",
                            style: TextStyle(fontSize: 25),
                          ),
                          const Text("usasology"),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue.shade700,
                                foregroundColor: Colors.white,
                                child: const Icon(Icons.call),
                              ),
                              const SizedBox(width: 6),
                              CircleAvatar(
                                backgroundColor: Colors.blue.shade700,
                                foregroundColor: Colors.white,
                                child: const Icon(Icons.video_call),
                              ),
                              const SizedBox(width: 6),
                              CircleAvatar(
                                backgroundColor: Colors.blue.shade700,
                                foregroundColor: Colors.white,
                                child: const Icon(Icons.email),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        "images/doctor.png",
                        width: 200,
                        alignment: Alignment.bottomRight,
                        fit: BoxFit.fitWidth,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff3269D7),
                        Color(0xFF78C2F2),
                      ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Neque porro quisquam est qui dolorem "
                        "There is no one who loves pain itself, who seeks ",
                        style: TextStyle(color: Colors.grey.shade300),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Taleh street name, city Banaadir',
                            style: TextStyle(color: Colors.grey.shade300),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Schedule",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            DateWidget(
                              time: "22",
                              day: "wednesday",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            DateWidget(
                              time: "23",
                              day: "Thursday",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            DateWidget(
                              time: "24",
                              day: "Friday",
                              containerSelected: true,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            DateWidget(
                              time: "25",
                              day: "saturday",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Select Time",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 5,
                        runSpacing: 10,
                        children: [
                          TimeWidget(
                            time: "9:00Am",
                            selected: true,
                          ),
                          TimeWidget(time: "10:00 AM"),
                          TimeWidget(time: "12:00 PM"),
                          TimeWidget(time: "1:00 PM"),
                          TimeWidget(time: "2:00 PM"),
                          TimeWidget(time: "3:00 PM"),
                          TimeWidget(time: "4:00 PM"),
                          TimeWidget(time: "5:00 PM"),
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Make an appointment',
                            style: TextStyle(fontSize: 17),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue.shade700,
                            minimumSize: Size(300, 50),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  TimeWidget({super.key, required this.time, this.selected = false});
  final time;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? Colors.amber : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(time),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
    required this.day,
    required this.time,
    this.containerSelected = false,
  });

  final String day;
  final String time;
  final bool containerSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: containerSelected ? Colors.amber : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            time,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: containerSelected ? Colors.white : Colors.blue,
            thickness: 3,
            endIndent: 5,
            indent: 5,
          ),
          Text(
            day,
            style: TextStyle(
                color: containerSelected ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }
}
