import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final List<String> images = ["assets/image_1.png"];
  final List<String> images = [
    "assets/im1.png",
    "assets/im2.png",
    "assets/im3.png"
  ];

  final List<String> texts = [
    "Juice Wrld, Drake, Kendrick lamar and more... ",
    "Joji, The Kid LAROI, Tate McRae and more...",
    "Martin Garrix, The Chainsmoker and more..."
  ];

  final List<String> photos = [
    "assets/i1.png",
    "assets/i2.png",
    "assets/i3.png"
  ];

  final List<String> headlines = ["Hip Hop Mix", "Moody Mix", "House Mix"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      top: 30,
                    ),
                    width: 200,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Good Morning",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 90,
                margin: EdgeInsets.only(
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: new Image.asset(
                        "assets/icons/simsek.png",
                        color: Color(0xff1ED760),
                      ),
                    ),
                    Text(
                      "Weekly ",
                      style: TextStyle(
                          color: Color(0xff1ED760),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text("Music",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 27),
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 30, left: 15),
                                child: Text(
                                  "Your\nDiscover\nWeekly",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              width: 230,
                              height: 113,
                              margin: EdgeInsets.only(left: 15, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    stops: [
                                      0,
                                      1
                                    ],
                                    colors: [
                                      Color(0xffE02FCF),
                                      Color(0xff00C188)
                                    ]),
                              ),
                            ),
                            Container(
                              child: Image.asset("assets/image_1.png"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 200,
                              child: Text(
                                "30 Fresh music for you every week",
                                style: TextStyle(
                                    color: Color(0xffdadada).withOpacity(0.7),
                                    fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 30,
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                "New songs every friday",
                                style: TextStyle(
                                    color: Color(0xffdada).withOpacity(0.7),
                                    fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 35, top: 15),
                width: 300,
                child: Text(
                  "Your Top Mixes",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.black,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 7),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff0E0E0F)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.asset(images[index]),
                            width: 130,
                            height: 113,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            width: 120,
                            child: Text(
                              headlines[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            width: 140,
                            child: Text(
                              texts[index],
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 15),
                width: 300,
                child: Text(
                  "Suggested artist",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 5),
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0E0E0F),
                      ),
                      width: 150,
                      height: 100,
                      child: Image.asset(photos[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
