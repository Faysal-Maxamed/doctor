import 'package:doctor_test/details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: Icon(Icons.menu_open),
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue.shade700,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi Pheyzal",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Welcom Back",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.grey.shade600),
                                  ),
                                  Text(
                                    "See all",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              const SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: const Row(
                                  children: [
                                    Categories_widget(
                                      lineic: Icon(Icons.remove_red_eye),
                                      titles: "eye",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Categories_widget(
                                      lineic: Icon(
                                        Icons.favorite_outline,
                                        color: Colors.white,
                                      ),
                                      titles: "Dental",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                   Categories_widget(
                                      lineic: Icon(Icons.remove_red_eye),
                                      titles: "eye",
                                    ),
                                   
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Categories_widget(
                                      lineic: Icon(Icons.remove_red_eye),
                                      titles: "eye",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            padding: EdgeInsets.only(left: 30),
                            height: 370,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                              ),
                              color: Colors.blue,
                            ),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: const Row(
                                children: [
                                  const RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      "Top Rotated",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  doctorsWidget(
                                    name: "Pheyzal",
                                    title: "usasology",
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  doctorsWidget(
                                    name: "John",
                                    title: "usasology",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 30,
                  right: 30,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 2,
                          offset: Offset(0, 15))
                    ]),
                    height: 60,
                    width: double.infinity,
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search...",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class doctorsWidget extends StatelessWidget {
  const doctorsWidget({super.key, required this.name, required this.title});

  final title;
  final name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => DoctorsDetailScreen())),
      child: Container(
        height: 230,
        width: 230,
        decoration: BoxDecoration(
          color: Color(0xff90e0ef),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr.$name",
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.asset(
                "images/doctor.png",
                height: 300,
                fit: BoxFit.fitHeight,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Categories_widget extends StatelessWidget {
  const Categories_widget({
    super.key,
    required this.lineic,
    required this.titles,
  });

  final Icon lineic;
  final titles;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          lineic,
          Text(
            titles,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
