import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> images = [
    "assets/songer.jpg",
    "assets/songer2.jpg",
    "assets/weekend.png"
  ];
  final List<String> text1 = [
    "İmpaulsive",
    "TED Talks Daily",
    "Mom's Basement"
  ];
  final List<String> text2 = ["334ep", "155 ep", "75 ep"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  'Search',
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
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 45,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade900,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Artist, songs or podcasts',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        prefixIcon: Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "The Kid LAROI",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 98,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "Drake",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 69,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "Justin Bieber",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 106,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "Joji",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 39,
                      height: 40,

                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bounceable(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text(
                        "Hip Hop",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 106,
                      height: 40,

                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "Pop",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 106,
                      height: 40,

                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Container(
                      child: Text(
                        "Top-Hits",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 11,
                        ),
                      ),
                      //Container properties
                      width: 106,
                      height: 40,

                      decoration: BoxDecoration(
                          color: Color(0xFF0A0E0E),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, top: 24),
                child: Text(
                  "Podcast's",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            height: 210,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Color(0XFF0E0E0F),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(10),
                  width: 130,
                  child: Column(
                    children: [
                      Container(
                        //fotoğraf
                        width: 95,
                        height: 106,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(images[index])),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 200,
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          text1[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 5),
                        width: 200,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text2[index],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xffDADADA),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 19,
                ),
                child: Text(
                  "Browse All",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    width: 160,
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.blue, Colors.red]),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 8),
                      child: Text(
                        "Made For You",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, top: 10),
                  width: 160,
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.orange, Colors.greenAccent]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 8),
                    child: Text(
                      "Charts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ]),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 3, bottom: 10),
                    child: Container(
                      margin: EdgeInsets.only(right: 17, top: 10),
                      width: 160,
                      height: 90,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.white, Colors.blue]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 8),
                        child: Text(
                          "Discover",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 160,
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.purple, Colors.red]),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 8),
                      child: Text(
                        "New Release",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
