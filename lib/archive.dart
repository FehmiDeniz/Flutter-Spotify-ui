import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyui/tophits.dart';

class archive extends StatefulWidget {
  const archive({super.key});

  @override
  State<archive> createState() => _archiveState();
}

final List<String> pImages = [
  "assets/p1.png",
  "assets/p2.png",
  "assets/p3.png",
  "assets/p4.png"
];
final List<String> pText = [
  "Playlist#1",
  "Playlist#2",
  "Playlist#3",
  "Playlist#4"
];

class _archiveState extends State<archive> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 8),
                    width: 150,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your Library",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: IconButton(
                      padding: EdgeInsets.only(top: 22, right: 20),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                      icon: Icon(Icons.search),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 30,
                      icon: new Image.asset("assets/icons/user.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 163,
                        height: 181,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffd9d9d9).withOpacity(0.05),
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => topHits()));
                              },
                              child: Container(
                                width: 160,
                                child: Image.asset(pImages[0]),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 150,
                              child: Text(pText[0],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 163,
                        height: 181,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffd9d9d9).withOpacity(0.05),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              child: Image.asset(pImages[1]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 150,
                              child: Text(pText[1],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 163,
                        height: 181,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffd9d9d9).withOpacity(0.05),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              child: Image.asset(pImages[2]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              width: 150,
                              child: Text(pText[2],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 163,
                        height: 181,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffd9d9d9).withOpacity(0.05),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              child: Image.asset(pImages[3]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              width: 150,
                              child: Text(pText[3],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.bottomCenter,
                width: 200,
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 340,
                    child: Text(
                      "Your Activities",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        width: 180,
                        alignment: Alignment.center,
                        child: Text(
                          "Liked Songs",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/fam.png",
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        alignment: Alignment.center,
                        child: Text(
                          "     Followed Artist ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/mic.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        width: 180,
                        alignment: Alignment.center,
                        child: Text(
                          "        Followed Podcast",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
