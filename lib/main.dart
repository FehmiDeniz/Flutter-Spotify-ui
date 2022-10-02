import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:spotifyui/archive.dart';
import 'package:spotifyui/home.dart';
import 'package:spotifyui/load.dart';
import 'package:spotifyui/log1.dart';

import 'package:spotifyui/login.dart';
import 'package:spotifyui/search.dart';
import 'package:spotifyui/todays.dart';
import 'package:spotifyui/tophits.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'spotify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: log1(),
      //home: archive(),
      //home: tophits(),
      //home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> screen = [HomeScreen(), SearchScreen(), archive()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: new Image.asset(
                    "assets/icons/home.png",
                    color: currentindex == 0 ? Colors.green : Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: currentindex == 1 ? Colors.green : Colors.white,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: new Image.asset("assets/icons/archive.png",
                      color: currentindex == 2 ? Colors.green : Colors.white),
                  label: ""),
            ]),
        body: screen[currentindex]);
  }
}
