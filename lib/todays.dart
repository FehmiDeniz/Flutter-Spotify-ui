import 'package:flutter/material.dart';

class today extends StatefulWidget {
  const today({super.key});

  @override
  State<today> createState() => _todayState();
}

class _todayState extends State<today> {
  final List<String> images = [
    "assets/t1.png",
    "assets/t2.png",
    "assets/t3.png"
  ];

  final List<String> text1 = ["First Class", "Blackpink", "The Weekend"];
  final List<String> text2 = ["Jack Harlow", "Feel This Love", "Die For You"];
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                height: 100,
                width: 350,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Today's Top Hits",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
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
          Container(
            width: double.infinity,
            height: 350,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 290,
                      height: 290,
                      child: Image.asset(
                        images[index],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      text1[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text2[index],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            width: 400,
            child: SizedBox(
              height: 35,
              child: Slider(
                activeColor: Color(0xff1ED760),
                inactiveColor: Color(0xffD9D9D9),
                min: 0.0,
                max: 100.0,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "0.22",
                  style: TextStyle(color: Colors.white30, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 18),
                child: Text(
                  "2.53",
                  style: TextStyle(color: Colors.white30, fontSize: 12),
                ),
              ),
            ],
          ),
          Container(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/shuffle.png")),
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/Union.png")),
                IconButton(
                    iconSize: 80,
                    onPressed: () {},
                    icon: Image.asset("assets/plps.png")),
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/Unio2.png")),
                IconButton(
                    onPressed: () {}, icon: Image.asset("assets/repeat.png")),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bluetooth),
                color: Colors.white.withOpacity(0.6),
                iconSize: 30,
              ),
              Text(
                "Airpods Pro",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6), fontSize: 15),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Image.asset("assets/c99.png"),
          )
        ],
      ),
    );
  }
}
