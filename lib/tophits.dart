import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyui/archive.dart';
import 'package:spotifyui/todays.dart';

class topHits extends StatefulWidget {
  const topHits({super.key});

  @override
  State<topHits> createState() => _topHitsState();
}

class _topHitsState extends State<topHits> {
  final List<String> images = [
    "assets/d1.png",
    "assets/g1.png",
    "assets/g2.png",
    "assets/g3.png"
  ];

  final List<String> text1 = [
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable"
  ];
  final List<String> text2 = [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: 600,
            height: 420,
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 420,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/weekend.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 100,
                            width: 350,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => archive(),
                                        ));
                                  },
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 205,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        bottom: 120,
                        left: 40,
                        child: Text(
                          "TODAY'S",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Monoton",
                              fontSize: 30),
                        ),
                      ),
                      Positioned(
                        bottom: 70,
                        left: 40,
                        child: Text(
                          "TOP HITS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 310, left: 20),
                        height: 500,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/c1.png"),
                                SizedBox(width: 6),
                                Image.asset("assets/c2.png"),
                              ],
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset("assets/c3.png"),
                                SizedBox(
                                  width: 6,
                                ),
                                Image.asset("assets/c4.png"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        child: Container(
                          width: 350,
                          child: Text(
                            "Featuring",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        left: 310,
                        //child: Image.asset("assets/Play.png"),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Play.png"),
                          iconSize: 65,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 360,
            child: ListView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if ((images.toList()[index] == images[3])) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => today(),
                              ));
                        }
                        ;
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 15,
                          bottom: 15,
                        ),
                        width: 80,
                        height: 80,
                        child: Image.asset(images[index]),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 192,
                          child: Text(
                            text1[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 191,
                          child: Text(
                            text2[index],
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          width: 10,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
