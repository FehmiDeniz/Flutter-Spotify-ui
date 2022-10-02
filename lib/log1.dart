import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyui/load.dart';

class log1 extends StatefulWidget {
  const log1({super.key});

  @override
  State<log1> createState() => _log1State();
}

class _log1State extends State<log1> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => load(),
            ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Container(
            height: 180,
            width: 180,
            child: IconButton(
              onPressed: null,
              icon: Image.asset("assets/sgreen.png"),
            ),
          ),
        ));
  }
}
